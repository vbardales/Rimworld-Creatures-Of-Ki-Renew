# In-game scenarios, run by Pickle

This companion is development-only: it lives beside `Mod/`, never inside it, and Steam never receives it.
It turns the manual scenarios of `../../TESTING.md` into Gherkin scenarios that set a scene up, assert,
and leave a person to read only the `@review` captures.

**Status: played since 2026-09-24.** The step assembly compiles against the installed 1.6 game and Pickle, and every
step line of the features resolves to exactly one step (`Check-Steps.ps1`, which was seen to go red on an undefined
step). The final validation at `ccd2685` on 2026-09-25 played the minimal English and French passes and the pass with
A Dog Said... Animal Prosthetics 2 green; the new-colony pass failed in its tool, which has since been changed. The
list at the end names the assumptions the first runs confirmed or broke. `STATUS.md` is the current record.

## What is in Gherkin, and why it needs a game

`../../_tools/Run-Functional-Tests.ps1` already proves what a file and the compiled game's code can prove: the
XML, the references, the texture paths, the DefInjected paths, and the reading of `CompEggLayer`. Nothing below
repeats it. Each feature exists because the game itself has to act on the defs.

| Feature | Language | What it shows | Why it cannot be an offline test |
|---|---|---|---|
| `01-loads` | all | The mod loaded, its five defs survived the real loader, the Wildness the game computes is 0.5, no warning from the mod, no error | A def the loader drops is silently absent, and the stat is computed by the game from the parsed def |
| `02-draws` (`@review`) | English | Adult male, adult female and kit, each turned north, east, south and west: three captures for nine textures. And a wild teshi's Wildness read off the living animal, with its information card opened | A missing texture is a pink box at most; the offline suite checks the files, not the draw. Pickle's pawn-stat step looks colonists up by nickname, so a local step reads the animal |
| `03-laying-and-hatching` (`@slow`) | English | A mated colony female lays by the game's own job, one stack of two fertilized eggs and no unfertilized egg, for the colony. Those eggs then hatch into two colony kits | Time, the egg-layer and hatcher comps, and the faction rule |
| `04-dessicated-corpse` (`@review`) | English | A killed, dessicated female draws with the borrowed dromedary sprite | The game does not ship that texture in the clear, so no file names it |
| `05-save-reload` | English | An animal and an egg survive a round trip, in a colony saved without the mod | Scribe behaviour |
| `08-ads2-integration` (`@requires`) | English, with the other mod | The teshi is offered as many of A Dog Said... Animal Prosthetics 2's recipes as a grizzly bear, which that mod already puts in category 3; this mod loads before it; no warning, no error | The offline suite has no copy of the other mod: it cannot show the categories still exist under those names, nor that the patch landed |
| `09-new-colony` (`@requires`) | English, with the NewColony tool | A colony started from the main menu with the mod enabled: the world and the first map generate, the teshi is defined, nothing from the mod is logged | The other scenarios load a fixture saved without the mod, so none of them starts a colony that has the mod from the beginning. The colony is random, never the same twice, so the scenario asserts only what the draw cannot change and is played sparingly. The tool failed at its first run on 2026-09-25 (no ideoligion and no starting pawns with Ideology on), so a red can still be its own |
| `10-nocturnal-integration` (`@requires`) | English, with the other mod | The parsed race of the teshi carries the `NocturnalAnimals.ExtendedRaceProperties` extension with `bodyClock` `Crepuscular`; no warning, no error | The offline suite has no copy of the other mod: it cannot show the class still exists under that name, nor that the extension was parsed and the def kept |
| `06-labels-en`, `07-labels-fr` (`@review`) | one each | The labels and descriptions **on the loaded defs**, and the health tab with each claw and ear on its own side | A language folder the game does not find is silent, above all on Linux and the Steam Deck. The English feature adds nothing about the English text, which is the XML itself: it is the control that a pass claiming English really ran in English, as the French one is for French |

## What is deliberately not in Gherkin

| Check | Where it went | Why |
|---|---|---|
| 4b, a lone female never lays | `Run-Functional-Tests.ps1` | Read off `CompTick` and `CanLayNow` in the compiled game. A run would test the engine |
| 7, manhunter chances, predator, nuzzle | none | Declared values, settled by reading the XML. The 0.75 roll is random and the engine's to honour |
| Taming, and what the stat does to it | none | Vanilla arithmetic on the stat, which `01-loads` reads |
| Every path the defs name resolves, case for case | `Run-Functional-Tests.ps1` | A file check. `02-draws` shows the game draws them |
| The pawn's Wildness read by Pickle's pawn-stat step | none | That step looks up colonists by nickname, so it cannot read an animal |
| An upgrade from a previous revision | none | The only earlier upload, 0.1.0, held the same `Mod/` as the tree under test |
| An incompatibility pass, a pass without a DLC | none | The mod declares no incompatibility and has no DLC guard. The DLC in `loadAfter` are ordering only |
| Taming, and the surgery itself, on the other mod | none | Those are that mod's recipes. What this mod answers for is that the teshi is in its category, which `08` reads off the recipes the game offers |
| Switching language inside a scenario | none | The language is a startup choice: one pass per language (`../../../AUDIT.md`, "On ne teste pas le jeu") |

## The local steps

`Source/TeshiSteps.cs`, 26 steps, all prefixed `Teshi Renew:` because Pickle matches on text alone across every
suite loaded. Each exists because no stock or shared step does it:

- **spawn a teshi of a chosen sex and life stage**, wild and facing a chosen way, or belonging to the colony;
  the step asserts the sex and the life stage the game really made;
- **let frames pass**, because a paused game advances frames and not ticks;
- **mate, fill the laying, wait for it, read what was laid**: the mating is only its effect (`Fertilize`), the
  progress is a private field written by name, and the laying itself is the game's job;
- **bring the eggs one tick from hatching, wait, count the kits that belong to the colony**;
- **kill a female and dessicate her corpse** through the rot comp's own method;
- **select, injure and read the animal by body part label**, one part per label or the step fails;
- **read a stat** off a race, and off a living animal, and **open the information card**;
- **read a def's label, description, the kit's label and plural, and the attack labels**, off the loaded defs;
- **count the recipes of another mod that a race is offered**, to compare the teshi with a grizzly bear;
- **read a def extension of the race by its type name and one of its fields**, by reflection, so the steps do not
  reference the assembly of the mod that owns it (the body clock of Nocturnal Animals).

The two private fields (`eggProgress`, `gestateProgress`) are written through reflection that fails loudly if the
game renames them, rather than writing nothing and passing.

Build with:

```powershell
dotnet build Tests/Pickle/Source/CreaturesOfKiRenew.PickleSteps.csproj -c Release
```

The output is `Mod/Pickle/Assemblies/`, which is tracked, and the intermediates go to `.build/`, which is not.
Rebuild before every run: Pickle loads step DLLs when the game starts. Check the features without a game:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File Tests/Pickle/Check-Steps.ps1
```

## Passes

Five passes. The mod declares no dependency and no `incompatibleWith`, and two optional integrations: A Dog Said...
Animal Prosthetics 2, in `loadBefore`, and [XND] Nocturnal Animals (Continued), which needs no declaration since its patch
touches only this mod's own def.

| Pass | Map | What it establishes |
|---|---|---|
| Minimal, English | `wsl-deps.sans-facultatifs.map` | The mod stands alone. Stages the one shared tool the health tab needs |
| Minimal, French | the same | The French DefInjected files are found and read |
| Optional integration, English | `wsl-deps.avec-ads2.map` | The teshi lands in the other mod's categories, in the setting where it will really be loaded |
| Optional integration, English | `wsl-deps.avec-nocturnal.map` | The teshi carries the crepuscular body clock, and the mod keeps working beside that mod. The mod is in the WSL cache since 2026-09-25 (`scripts/download-workshop-wsl.sh`, packageId `Mlie.XNDNocturnalAnimals`) |
| New colony, English | `wsl-deps.new-colony.map` | A colony that starts with the mod, which no saved game reaches. Random, so used sparingly: an initial or a final validation, never a fix loop |

**The load order of the third pass is written in its map.** The staging does not read `loadBefore` or `loadAfter`: it
activates the mods a map names in the map's order, then the mod under test, then its suite. The first run of that pass
loaded ADS2 before this mod, the order its author warns against, and `08` failed on its first assertion, the order
itself. `wsl-deps.avec-ads2.map` now names this mod's own packageId ahead of ADS2, which puts it there and makes the
staging skip its own copy. That is what the declared `loadBefore` produces once the game's sort has run, which the
harness does not do. The other order, ADS2 first, is the one a player gets from a bad sort, and testing what the other
mod does then is not this mod's business.

**Names stay short, though they no longer have to.** A failure capture is named after the feature and the scenario,
and the launcher copies the evidence to a Windows path. A name of 226 characters once put the copy over the
260-character limit, the copy stopped, and no capture of that run was kept. The dispatcher's session fixed the
launcher on 2026-09-25 (`Run-PickleWsl.ps1`, commit 443ae07b, with a test), so later runs copy normally. Every name
here is under 120 characters anyway, and the evidence folder's own 119 keeps the total under 240.

Tags decide what runs where: `@en-only` and `@fr-only` follow the language of the labels they name, and
everything that does not depend on the language (`02` to `05`, `08`) is `@en-only`, so it is played once.
`08` carries `@requires:SamBucher.ADogSaidAnimalProsthetics2`, so the two minimal passes skip it, and a skipped
scenario is not a passed one: it has to be played in the third pass. That mod is already in the WSL cache
(`~/workshop-cache/steamapps/workshop/content/294100/3238353862`, checked on 2026-09-24), which the staging copies from.

Never start RimWorld by hand and never a second instance (`../../../AUDIT.md`). A run is not launched from here
and nothing is kept alive in the session: a request is dropped with the ticket dispatcher
(`../../../Rimworld-Ticket-Dispatcher/README.md`, `docs/WELCOME.md`), which runs it through the shared queue and wakes
the session by message at `START`, `END` and `RUN_DONE`. No `Monitor`, no heartbeat, no cron, no loop.

**Small tickets.** Three small ones rather than one big one, and the scope follows what the ticket is for. A first or
final validation plays every scenario of the pass, so no scenario filter. An exploration or a fix plays as few
scenarios as it can, one `-Filter '::<scenario name>'`. The first run of this suite is a validation, split by what
takes long, not by what it covers:

| Ticket | Filter | Language | Scenarios |
|---|---|---|---|
| English, all but the slow laying | `Creatures of Ki - Teshi Renew - Pickle tests,!@fr-only,!@slow` | English | `01`, `02`, `04`, `05`, `06`, and `08` skipped by its requirement |
| English, the slow laying and hatching | `03-laying-and-hatching` | English | the two `@slow` scenarios, deadline 900 s each |
| French, all | `Creatures of Ki - Teshi Renew - Pickle tests,!@en-only` | French | `01` and `07` |

The integration pass is a fourth ticket, with `wsl-deps.avec-ads2.map` and the same English filter minus `!@slow`,
now that the mod is in the WSL cache.

```powershell
# from the collection root; the owner is this session's local_<id>, from get_session with "self"
powershell.exe -ExecutionPolicy Bypass -File Rimworld-Ticket-Dispatcher/scripts/Submit-PickleRun.ps1 `
  -Mod CreaturesOfKiRenew -Owner local_<id> -Label "first run French, all" -Language French `
  -DepMap wsl-deps.sans-facultatifs.map -Filter 'Creatures of Ki - Teshi Renew - Pickle tests,!@en-only' `
  -EvidenceDir CreaturesOfKiRenew/Tests/Pickle/Evidence/<date>-french
powershell.exe -ExecutionPolicy Bypass -File Rimworld-Ticket-Dispatcher/scripts/Submit-PickleRun.ps1 -List
```

To see the machine without launching anything: `scripts/Pickle-Status.ps1`. Read `exitReason` before the counts, and
compare the scenarios played with the scenarios discovered for the filter: 16 scenarios are written (the first
validation at `ccd2685` had 15, the tenth came after it). The minimal
English pass discovers 14 and plays 11, `08`, `09` and `10` being skipped by their requirements, which the two English tickets share
between them; the French pass plays 3, `01-loads` being in both; the ADS2 integration pass discovers 14 and plays 12, `09` and `10` being skipped; the Nocturnal pass plays the English set, 12 of 14 discovered with the slow ones in their own ticket; the new-colony pass plays 1.

## Evidence

Raw reports go to `Evidence/` under this folder, which `.gitignore` excludes. What to keep and what to delete is
in `../../TESTING.md`, "Evidence to keep". The history is one text line per run in `docs/runs/`, never a folder.

## What the first run has to confirm

These were the assumptions of the first run; the runs of 2026-09-24 and 2026-09-25 confirmed 1 to 8 (with the corrections noted in `STATUS.md`) and 9. Kept as the record of what each one rested on.

1. **The fixture has room.** Cells (142..151, 155) and (146, 153) are clear, walkable and in view of a camera
   centred on (146, 155) in `test-colony`. The cells come from another suite's use of the same fixture, not from
   a look at the map.
2. **A paused game keeps what it is given.** A spawned animal keeps its facing, and ten frames are enough for
   every graphic to be built before the capture.
3. **The laying reading is right.** `ProduceEgg` makes one stack of two fertilized eggs. If the game lays two
   stacks or an unfertilized egg, `03` fails with the stacks it found, and the egg passages of TESTING.md,
   README.md, CHANGELOG.md, ATTRIBUTION.md and About.xml, which now state that reading, are wrong again.
4. **A colony teshi lays where it stands.** No egg box is needed, and the laying job is given within the deadline
   at ultrafast speed.
5. **The eggs hatch in a few hundred ticks** once their progress is 0.9999, at the fixture's temperature, and a
   stack of two hatches two kits.
6. **The information card is a window the screenshot mode keeps.** Confirmed by the first run, which also showed that its list does not reach the Wildness line without scrolling, so Wildness is asserted and not read off the capture.
7. **Reading the label of a def in French returns the injected text**, with no accented gibberish, and the
   health tab keeps the longer French labels on one line.
8. **Killing a spawned animal is quiet**: no letter, dialog or thought blocks the next step.
9. **The other mod keeps its category names.** `ADS_Cat1`, `ADS_Cat2` and `ADS_Cat3` are read from its repository
   as of 2026-09-24, not from an installed copy. If they change, the patch finds nothing and does nothing, `08`
   fails on the count, and the failure message says which side is at zero.
