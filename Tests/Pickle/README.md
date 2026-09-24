# In-game scenarios, run by Pickle

This companion is development-only: it lives beside `Mod/`, never inside it, and Steam never receives it.
It turns the seven manual scenarios of `../../TESTS.md` into Gherkin scenarios that set a scene up, assert,
and leave a person to read only the `@review` captures.

**Status: written on 2026-09-24, never run.** The step assembly compiles against the installed 1.6 game and
Pickle, and every step line of the features resolves to exactly one step (`Check-Steps.ps1`, which was seen
to go red on an undefined step). Whether each step does what its scenario hopes is what the first run
settles; the list at the end names the assumptions it will confirm or break. Running the suite is the work of
`done -> tested`, not of `done`.

## What is in Gherkin, and why it needs a game

`../../_tools/Run-Functional-Tests.ps1` already proves what a file and the compiled game's code can prove: the
XML, the references, the texture paths, the DefInjected paths, and the reading of `CompEggLayer`. Nothing below
repeats it. Each feature exists because the game itself has to act on the defs.

| Feature | Language | What it shows | Why it cannot be an offline test |
|---|---|---|---|
| `01-loads` | all | The mod loaded, its five defs survived the real loader, the Wildness the game computes is 0.5, no warning from the mod, no error | A def the loader drops is silently absent, and the stat is computed by the game from the parsed def |
| `02-draws` (`@review`) | English | Adult male, adult female and kit, each turned north, east, south and west: three captures for nine textures. And the information card of a wild teshi | A missing texture is a pink box at most; the offline suite checks the files, not the draw. The card is the one route to the pawn's own Wildness |
| `03-laying-and-hatching` (`@slow`) | English | A mated colony female lays by the game's own job, one stack of two fertilized eggs and no unfertilized egg, for the colony. Those eggs then hatch into two colony kits | Time, the egg-layer and hatcher comps, and the faction rule |
| `04-dessicated-corpse` (`@review`) | English | A killed, dessicated female draws with the borrowed dromedary sprite | The game does not ship that texture in the clear, so no file names it |
| `05-save-reload` | English | An animal and an egg survive a round trip, in a colony saved without the mod | Scribe behaviour |
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
| A pass with optional mods, an incompatibility pass, a pass without a DLC | none | The mod declares no dependency, no optional mod and no incompatibility, and has no DLC guard. The DLC in `loadAfter` are ordering only |
| Switching language inside a scenario | none | The language is a startup choice: one pass per language (`../../../AUDIT.md`, "On ne teste pas le jeu") |

## The local steps

`Source/TeshiSteps.cs`, 22 steps, all prefixed `Teshi Renew:` because Pickle matches on text alone across every
suite loaded. Each exists because no stock or shared step does it:

- **spawn a teshi of a chosen sex and life stage**, wild and facing a chosen way, or belonging to the colony;
  the step asserts the sex and the life stage the game really made;
- **let frames pass**, because a paused game advances frames and not ticks;
- **mate, fill the laying, wait for it, read what was laid**: the mating is only its effect (`Fertilize`), the
  progress is a private field written by name, and the laying itself is the game's job;
- **bring the eggs one tick from hatching, wait, count the kits that belong to the colony**;
- **kill a female and dessicate her corpse** through the rot comp's own method;
- **select, injure and read the animal by body part label**, one part per label or the step fails;
- **open the information card**;
- **read a def's label, description, the kit's label and plural, and the attack labels**, off the loaded defs.

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

One mod set, two languages. The mod declares no dependency, no `loadAfter` on a mod, no `incompatibleWith`, so
the only map is `wsl-deps.sans-facultatifs.map`, which stages the one shared tool the health tab needs. Tags
decide what runs where: `@en-only` and `@fr-only` follow the language of the labels they name, and everything
that does not depend on the language (`02` to `05`) is `@en-only`, so it is played once.

Never start RimWorld by hand and never a second instance (`../../../AUDIT.md`). From the collection root, one at
a time, each through the shared queue:

```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts/Pickle-Status.ps1
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod CreaturesOfKiRenew -DepMap wsl-deps.sans-facultatifs.map -Language English -Filter 'Creatures of Ki - Teshi Renew - Pickle tests,!@fr-only' -EvidenceDir CreaturesOfKiRenew/Tests/Pickle/Evidence/<date>-english
powershell.exe -ExecutionPolicy Bypass -File scripts/Run-PickleWsl.ps1 -Mod CreaturesOfKiRenew -DepMap wsl-deps.sans-facultatifs.map -Language French -Filter 'Creatures of Ki - Teshi Renew - Pickle tests,!@en-only' -EvidenceDir CreaturesOfKiRenew/Tests/Pickle/Evidence/<date>-french
```

A session waits for its ticket with the `Monitor` tool on a read-only poll of `scripts/Pickle-Status.ps1`, never
with a cron and never with a script launched in the background from a shell. Read `exitReason` before the counts,
and compare the scenarios played with the scenarios discovered for the filter: 13 scenarios are written, 11 of
them in the English pass and 3 in the French one, `01-loads` being played in both. The two laying scenarios are
`@slow` and carry the longest deadline (`@timeout:900`).

## Evidence

Raw reports go to `Evidence/` under this folder, which `.gitignore` excludes. What to keep and what to delete is
in `../../TESTS.md`, "Evidence to keep". The history is one text line per run in `docs/runs/`, never a folder.

## What the first run has to confirm

None of this was seen running. These are the assumptions a green first run confirms and a red one names.

1. **The fixture has room.** Cells (142..151, 155) and (146, 153) are clear, walkable and in view of a camera
   centred on (146, 155) in `test-colony`. The cells come from another suite's use of the same fixture, not from
   a look at the map.
2. **A paused game keeps what it is given.** A spawned animal keeps its facing, and ten frames are enough for
   every graphic to be built before the capture.
3. **The laying reading is right.** `ProduceEgg` makes one stack of two fertilized eggs. If the game lays two
   stacks or an unfertilized egg, `03` fails with the stacks it found, and the egg passages of TESTS.md,
   README.md, CHANGELOG.md, ATTRIBUTION.md and About.xml, which now state that reading, are wrong again.
4. **A colony teshi lays where it stands.** No egg box is needed, and the laying job is given within the deadline
   at ultrafast speed.
5. **The eggs hatch in a few hundred ticks** once their progress is 0.9999, at the fixture's temperature, and a
   stack of two hatches two kits.
6. **The information card is a window the screenshot mode keeps**, and it lists Wildness for a wild animal.
7. **Reading the label of a def in French returns the injected text**, with no accented gibberish, and the
   health tab keeps the longer French labels on one line.
8. **Killing a spawned animal is quiet**: no letter, dialog or thought blocks the next step.
