# Creatures of Ki — Teshi Renew: what to check in game

The standalone suite `_tools/Run-Functional-Tests.ps1` provides 21 checks, including XML and Core references. The four external validators formerly cited here are absent from this repository; their historical results are not current verification.

`_tools/Run-Functional-Tests.ps1` sits between the two. It cannot run the game either, but it
reads the compiled game and runs twenty-one checks this document used to have to ask of a
play session — including the one scenario 4b was written to settle, which is now settled below.
Run it first; it takes seconds and it costs nothing.

The Pickle suite played most of these on the headless game on 2026-09-24, and STATUS.md says what it found. Played by hand, run these in order: the first one is cheap and catches anything fatal, the
fourth is the only one that can crash a save.

Junction it into `RimWorld/Mods` first — pointing at `CreaturesOfKiRenew/Mod`, not at the repository
root. Play with dev mode on, and keep `Player.log` after the session:

```
C:\Users\nelim\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log
```

---

## The passes this suite needs

Declared here, as `../AUDIT.md` asks: how many, which, and what each covers. Four passes, filed as small tickets.

| Pass | Map | Language | Plays | Covers |
|---|---|---|---|---|
| Minimal, English | `wsl-deps.sans-facultatifs.map` | English | 11 of 13 discovered, in two tickets: everything but the slow laying, then the laying and hatching | The mod stands alone with Core, the DLC and the shared tools |
| Minimal, French | the same | French | 3 | The French translations are found and read by the game |
| Optional integration | `wsl-deps.avec-ads2.map` | English | 12 of 13 discovered | A Dog Said... Animal Prosthetics 2 mounted, this mod ahead of it |
| New colony | `wsl-deps.new-colony.map` | English | 1 | A colony that starts with the mod, not one that had it added. **Random: never the same colony twice, so used sparingly** |

Fifteen scenarios are written. A scenario tagged `@requires` is skipped in the passes that do not mount its mod, and a
skipped scenario is not a passed one. There is no incompatibility pass, since the mod declares no incompatibility, and no
pass without a DLC, since it has no DLC guard. `Tests/Pickle/README.md` has the commands and the reasons.

---

## 1. It loads

Enable the mod alone, with Core and nothing else. It needs no DLC and no Harmony.

**Expect:** `Creatures of Ki - Teshi Renew` in the mod list, its icon beside it, its showcase on the
mod page. No red text at startup.

**Fails if:** any `XML error` or `Could not resolve cross-reference` naming `Teshi`,
`EggTeshiFertilized`, `EggTeshiUnfertilized` or `BipedAnimalWithClawsAndTail`. A def that fails to
load is silently absent afterwards, so a clean start is what the next four scenarios rest on.

## 2. The animal draws

Dev mode → *Spawn pawn* → teshi. Spawn several so both sexes and both life stages appear, or force
them with *Dev: set age*.

**Expect:** four wide banded ears, a dark crest, a round low body. The female reads greyer, the kit
is the same drawing at a smaller size. Move the animals in each of the four cardinal directions and inspect their facing.

**Fails if:** a pink or white box appears for any facing, sex or stage. There are nine textures and
no north-facing kit or female-north beyond the three supplied; a missing one shows as pink.

## 3. Wildness reads 50 %

This is the first of the two things the 1.6 port changed. `wildness` stopped being a field of
`<race>` and became a `Wildness` StatDef under `statBases`. The old form is not an error — it is
simply not read, and the stat's default is `-1`, outside the `[0,1]` the game uses.

Select a wild teshi → **Information** tab → find *Wildness*. The list is longer than the card: scroll it, or type `Wildness` in the card's search box.

**Expect:** 50 %.

**Fails if:** it shows a negative value, 0 %, or nothing. The visible symptom is that taming
succeeds almost immediately, on an animal that should be as hard to tame as a bear.

Cross-check: order a taming job and watch the success chance. A first-attempt success is random and does not prove a defect; check the displayed Wildness value.

## 4. The unfertilized egg — the only crash risk

This is the second port change, and the reason `EggTeshiUnfertilized` was written. The claim that
justified it has since been read off the game rather than assumed: see 4b, which is now answered.

The teshi's comp reads:

```
eggFertilizationCountMax   1
eggCountRange              2
eggProgressUnfertilizedMax 0.9
eggLayIntervalDays         15
```

Two eggs per laying, but only one fertilization available. An earlier version of this document, of
the README and of the changelog said that a mated teshi therefore lays one fertilized egg and one
unfertilized. Reading `CompEggLayer.ProduceEgg` in the compiled game says otherwise, and 4a is written
to the reading: `ProduceEgg` makes **one stack** of `eggCountRange` eggs, all of the fertilized def while
a fertilization is left, and all of the unfertilized def otherwise. The stack is two fertilized eggs. The
unfertilized def is chosen only when no fertilization is left, and a laying without one is stopped at
0.9 (4b), so a teshi never lays it. If 4a shows a stack of one and a stack of one, the reading is wrong.

### 4a. Mated female

Tame one male and one female, keep them together, and let a laying cycle complete. In dev mode the
egg-layer comp offers a debug gizmo that advances the cycle by a day; push it until she lays.

**Expect:** one stack of two `teshi egg (fert.)` on the ground, and no `teshi egg (unfert.)`. The
female has no fertilization left afterwards, so she does not lay again until she is mated.

**Fails if:** the stack is anything else, or an exception appears in the log at the moment of laying,
naming `CompEggLayer` or `ThingMaker.MakeThing`.

### 4b. Lone female

Tame a single female, no male anywhere on the map, and advance her cycle the same way.

**Expect: nothing, ever.** She never lays. This was the open question of this document and it is
now answered, not by playing but by reading the compiled game, in `CompEggLayer`:

- `CompTick` accumulates `eggProgress`, and while the animal is unfertilized it writes
  `eggProgressUnfertilizedMax` straight into that field — progress is *pinned* to the setting, not
  merely compared against it. The teshi's setting is 0.9.
- `CanLayNow` requires a full `1` of `eggProgress`.

Pinned at 0.9 and needing 1, she is stopped for good. The inspect string should say so: the comp
has a `ProgressStoppedBecauseUnfertilized` state for exactly this case.

So this scenario is now a confirmation rather than an experiment. **Fails if** she lays anything
at all — that would mean the reading above is wrong, and `Run-Functional-Tests.ps1` should have
caught it first.

What that settles about the def: the crash this mod's documents once described was not possible for a
lone teshi, and the same reading shows the unfertilized def is not reached by a mated laying either. It
is declared because every egg-layer in Core declares one, and it is what a dev-mode lay-egg on a female
with no fertilization left would ask for. It is harmless, and it is not the fix the changelog says.

## 5. The egg hatches

Leave a fertilized egg somewhere warm and advance fifteen days, or use the dev gizmo on the egg.

**Expect:** teshi kits, tame, belonging to the colony: a laid stack of two eggs hatches into two.

**Fails if:** it hatches into nothing, or into the wrong pawn kind.

## 6. The dessicated corpse — known defect, confirm it is only cosmetic

Kill a teshi and let the corpse dry out, or spawn a dessicated corpse directly.

**Expect:** a dromedary's dessicated sprite, at three draw sizes. **This is correct behaviour for
this mod.** It is Shooki's own choice, inherited deliberately and recorded in `ATTRIBUTION.md`;
inventing replacement art would make this a rewrite rather than a port.

**Fails if:** a pink box, or an exception. Borrowing the texture is the intended state; failing to
find it is not.

## 7. Predator and manhunter, sanity only

Nothing in the port touched these, so this is a regression check rather than a verification.

- `manhunterOnDamageChance` is 0.75: shoot a wild teshi once and it should turn manhunter about
  three times in four. It has four times a human's health pool, so do this away from the colony.
- `manhunterOnTameFailChance` is 0.05: a failed taming should rarely provoke it.
- `predator` is true: a wild teshi should hunt, not graze.
- `nuzzleMtbHours` is 12: a tame one should nuzzle colonists within a day or so.

## 8. The optional integration with A Dog Said... Animal Prosthetics 2

Only with that mod (`SamBucher.ADogSaidAnimalProsthetics2`, Workshop 3238353862) enabled, in the load order
RimWorld computes: this mod loads before it, because `About.xml` says so and its page asks for it.
`Patches/ADS2_Categories.xml` writes the teshi into the categories that mod uses to decide which animals may
receive prostheses.

Spawn a teshi and a grizzly bear, select each, open the Health tab and look at *Add bill* → operations.

**Expect:** the teshi is offered the same prosthetic and bionic recipes as the grizzly bear, which that mod
already puts in category 3. Whether a given prosthesis applies is decided by the parts of the teshi's body,
which is that mod's arithmetic.

**Fails if:** the teshi is offered none of that mod's recipes, or fewer than the bear, or an error names
`ADS_Cat3` or the patch at startup. And with the other mod **absent**, the mod must load exactly as in
scenario 1: the patch finds nothing and must log nothing.

## 9. A new game with the mod

Start a new colony with this mod enabled, from the main menu, and play the first minutes.

**Expect:** the world and the first map generate without an error, the teshi is defined, and nothing from the mod is
logged. The fixture colony of the other scenarios was saved without the mod, so only this scenario shows a colony that
starts with it.

**Fails if:** an error or a warning names the mod during the start, or the teshi is not defined afterwards.

**It is random, and it is used sparingly.** A new colony is never the same colony twice: the world, the starting tile and
the colonists come out differently at each start, whatever seed the scenario names. Three consequences.

- A green shows that one draw was clean, not that every draw is. A red may not come back on a rerun, and a rerun that goes
  green does not clear it: read the run's `new-colony` attachment, which names the choices, the tile and the colonists,
  and keep it with the report.
- It asserts only what the draw cannot change: the defs, and that nothing from the mod is logged. Anything that depends on
  what the colony holds does not belong in it.
- It is played in an initial or a final validation, once, and never in a fix or an exploration loop, where a fix would be
  judged against a different colony each time. Anything that has to repeat is played on the fixture colony instead.

---

## What to send back

The `Player.log` from the session, plus one line per scenario saying what happened — including game version and mod list. Scenarios 1 to 9 are listed here, and the Pickle suite plays them; a session by hand plays what it did not.

## Translation display — English and French

Unverified until performed in RimWorld 1.6. Repeat in both languages: inspect an adult
and a baby teshi, both egg types, melee attack labels and all custom body-part labels in
the health tab. Check the baby singular/plural, accents, raw keys, English fallback in
French, formatting and clipping. Record results and Player.log evidence in STATUS.md.

---

## What `tested` requires

Read from `../AUDIT.md`, transition `done -> tested`. Nothing below has been done: the mod has never
run, and the Pickle suite written for it has never been played. That is pending work, not a pass.

- Every scenario above is played in the game, or is listed here as not applicable with its reason.
- The Pickle suites run green, and their `@review` captures are opened and looked at. Read `exitReason`
  before the counts, and compare the scenarios played with the features discovered.
- No scenario is left tagged `@wip`: it is repaired and replayed, or deleted with its justification.
- Every conditional scenario (`@requires:<packageId>`) has had its pass, with the map that mounts that
  mod. There is one, `08-ads2-integration`, which needs A Dog Said... Animal Prosthetics 2: a run without
  it skips the scenario, and a skipped scenario is not a passed one. The mod needs no DLC, and the DLC in
  `loadAfter` are ordering only.
- No manual test is left to validate. Each of the nine scenarios becomes a green Pickle scenario or
  a listed not-applicable. The suite is in `Tests/Pickle/`, written on 2026-09-24 and never run: see its README and the table below.
- Both languages are played, one pass each (`-Language English`, `-Language French`), in developer
  mode: accented gibberish means a key missing from the active language, clean English inside French
  means a string that never went through translation.

### Scope of the Pickle suite

Only what a running game can show. The rest is already proved offline by `_tools/Run-Functional-Tests.ps1`.
The features are in `Tests/Pickle/Mod/Pickle/Features/`; `Tests/Pickle/README.md` says how to run them.

| Scenario | Fate | Feature | Why |
| --- | --- | --- | --- |
| 1. It loads | Pickle | `01-loads` | Only a load shows a def that failed and went silently absent, and the Wildness the game computes for the animal. |
| 2. The animal draws | Pickle, `@review` captures | `02-draws` | A pink box is a rendering fact. Three captures show the nine textures on all four facings. The captures still have to be opened. |
| 3. Wildness reads 50 % | Pickle | `01-loads`, `02-draws` | The game's computed value is asserted in 01, off the race, and in 02, off a living animal. The first run showed the information card's list is longer than its window and Wildness sits below the fold, so its capture shows that the card opens and reads in English, and is not offered as proof of 50 %. The offline suite shows the stat accepts 0.50, not that the game reads it. |
| 4a. Mated female lays | Pickle, `@slow` | `03-laying-and-hatching` | One stack of two fertilized eggs and no unfertilized egg, for the colony: behaviour through the game's own job. |
| 4b. Lone female | Not applicable | none | Read off the compiled game (`CompEggLayer`) by the offline suite. A run would test the engine. |
| 5. The egg hatches | Pickle, `@slow` | `03-laying-and-hatching` | Two kits that belong to the colony, from the eggs she laid. Needs the hatcher's own tick. |
| 6. Dessicated corpse | Pickle, `@review` capture | `04-dessicated-corpse` | The borrowed dromedary sprite is not shipped in the clear and no file reveals it. |
| 7. Predator and manhunter | Not applicable | none | These are declarations, and the mod answers for what it declares: read them in the XML. The offline suite proves each written field has a reader in the game, not its value, so the values are settled by reading the XML, and change only with it. The 0.75 roll is random and the engine's to honour; a test of it would test the game. |
| 8. Optional integration with A Dog Said... Animal Prosthetics 2 | Pickle, `@requires`, third pass | `08-ads2-integration` | The offline suite has no copy of the other mod, so it checks only the patch's shape. Only the game shows the teshi is offered the same recipes as a grizzly bear. |
| 9. A new game with the mod | Pickle, `@requires`, own pass | `09-new-colony` | No saved game reaches a colony that starts with the mod: the world and the first map are generated with the animal in them. Random, so played once in a validation and not in fix loops. Its first run, on 2026-09-25, failed in the tool, which starts a game with Ideology on and no ideoligion and no starting pawns, so it is replayed once when the tool changes. |
| Save and reload | Pickle | `05-save-reload` | An animal and an egg survive a round trip; the fixture colony, saved without the mod, is the mod added to an existing colony. |
| FR / EN display | Pickle, one pass per language | `06-labels-en`, `07-labels-fr` | Labels and descriptions read off the loaded defs, and the health tab with each claw and ear on its own side. |

## Evidence to keep

Raw Pickle reports live on disk in `Tests/Pickle/Evidence/<run>/`, which `.gitignore` excludes:
captures and `Player.log` grow without limit. Pass `-EvidenceDir` to the launcher so the report is
copied there before the lock is released, then check `exitReason` and the played and discovered
counts in each copy.

Keep, per scenario, the latest report for the revision now in the repository. Keep an older one only
when it is the sole proof of a check the latest run did not repeat. Delete every other report as soon
as a newer one replaces it, after listing what goes and what stays. Never delete a report that
`STATUS.md` still points to: repoint it first. The history is one text line per run in `docs/runs/`,
never a folder. The shared Pickle report folder holds every mod's screenshots: keep only this mod's.

The proofs worth keeping for this mod, and only these:

- the animal drawn on each facing: one capture per sex and life stage (adult male, adult female, kit),
  with no pink box;
- the stack of two `teshi egg (fert.)` on the ground after a mated laying, with none of the unfertilized egg;
- the hatched kit, tame and belonging to the colony;
- the dessicated corpse;
- the health tab of an adult teshi in English and in French, showing the custom body-part labels;
- the `Player.log` of each pass, already searched for `XML error`, `Could not resolve cross-reference`
  and the names `Teshi`, `EggTeshiFertilized`, `EggTeshiUnfertilized`: only the newest one per pass.

A capture is minified before it is kept: drop the ones the verdict does not rest on, crop to the
panel that proves the point, or re-encode it as JPEG (quality 80, at most 1280 px wide). Never retouch
one, and keep the original of a capture that has to be measured. The text reports (`summary.md`,
`junit.xml`) are small and stay whole; `report.html` and `messages.ndjson` go.

Today there is nothing to sort: no Pickle run has been made, so no report sits in this repository,
in git or on disk.
