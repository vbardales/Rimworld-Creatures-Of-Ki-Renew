# Creatures of Ki — Teshi Renew: what to check in game

Standalone suite `scripts/Run-Functional-Tests.ps1` gives 23 checks, incl. XML and Core references. Four external validators once cited here absent from repo; their historical results not current verification.

`scripts/Run-Functional-Tests.ps1` sits between the two. Cannot run game either, but reads compiled game and runs twenty-two checks this doc used to ask of a play session — incl. the scenario 4b was written to settle, now settled below. Run it first; takes seconds, costs nothing.

Pickle suite played most of these on headless game on 2026-09-24; STATUS.md says what it found. Played by hand, run in order: first cheap, catches anything fatal; fourth only one that can crash a save.

Junction into `RimWorld/Mods` first — point at `CreaturesOfKiRenew/Mod`, not repository root. Play with dev mode on, keep `Player.log` after session:

```
C:\Users\nelim\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log
```

---

## The passes this suite needs

Declared here, as `../AUDIT.md` asks: how many, which, what each covers. Six passes, filed as small tickets.

| Pass | Map | Language | Plays | Covers |
|---|---|---|---|---|
| Minimal, English | `wsl-deps.sans-facultatifs.map` | English | 11 of 13 discovered, in two tickets: everything but slow laying, then laying and hatching | Mod stands alone with Core, DLC and shared tools |
| Minimal, French | the same | French | 3 | French translations found and read by game |
| Optional integration | `wsl-deps.avec-ads2.map` | English | 12 of 13 discovered | A Dog Said... Animal Prosthetics 2 mounted, this mod ahead of it |
| Optional integration | `wsl-deps.avec-nocturnal.map` | English | 1 to 12 of 14 discovered | [XND] Nocturnal Animals (Continued) mounted: teshi carries crepuscular body clock. Exploration plays only `10`, validation plays English set |
| New colony | `wsl-deps.new-colony.map` | English | 1 | Colony that starts with mod, not one that had it added. **Random: never same colony twice, so used sparingly** |
| Gallery captures | `wsl-deps.sanctuary.map` | English | 7 of second series (`12-workshop-captures-v2`, one scenario per image, `docs/GALLERY-V2.md`), plus 6 of first series (`11-workshop-captures`) | Three images of Workshop page (`11-workshop-captures`), on Nelim's tribe (sanctuary, "smiley-north" frame), staged as series: hay nest and lit torch placed by StageDecor, hour 18, clear weather. Presentation, not mod check: every capture opened before use |

Thirty-five scenarios written (`Scenario:` lines) across twelve features, both gallery series (`11`, `12`) included. Scenario tagged `@requires` skipped in passes not mounting its mod; skipped scenario not passed one. No incompatibility pass, since mod declares no incompatibility, and no pass without DLC, since no DLC guard. `Tests/Pickle/README.md` has commands and reasons.

---

## 1. It loads

Enable mod alone, with Core only. Needs no DLC, no Harmony.

**Expect:** `Creatures of Ki - Teshi Renew` in mod list, icon beside it, showcase on mod page. No red text at startup.

**Fails if:** any `XML error` or `Could not resolve cross-reference` naming `Teshi`, `EggTeshiFertilized`, `EggTeshiUnfertilized` or `BipedAnimalWithClawsAndTail`. Def that fails to load silently absent afterwards, so clean start is what next four scenarios rest on.

## 2. The animal draws

Dev mode → *Spawn pawn* → teshi. Spawn several so both sexes and both life stages appear, or force with *Dev: set age*.

**Expect:** four wide banded ears, dark crest, round low body. Female reads greyer, kit same drawing smaller. Move animals in each of four cardinal directions, inspect facing.

**Fails if:** pink or white box appears for any facing, sex or stage. Nine textures, no north-facing kit or female-north beyond the three supplied; missing one shows pink.

## 3. Wildness reads 50 %

First of two things 1.6 port changed. `wildness` stopped being field of `<race>`, became `Wildness` StatDef under `statBases`. Old form not error — simply not read, stat default `-1`, outside `[0,1]` game uses.

Select wild teshi → **Information** tab → find *Wildness*. List longer than card: scroll, or type `Wildness` in card's search box.

**Expect:** 50 %.

**Fails if:** negative value, 0 %, or nothing. Visible symptom: taming succeeds almost immediately, on animal that should be as hard to tame as bear.

Cross-check: order taming job, watch success chance. First-attempt success random, does not prove defect; check displayed Wildness value.

## 4. The unfertilized egg — the only crash risk

Second port change, reason `EggTeshiUnfertilized` written. Claim that justified it since read off game, not assumed: see 4b, now answered.

Teshi's comp reads:

```
eggFertilizationCountMax   1
eggCountRange              2
eggProgressUnfertilizedMax 0.9
eggLayIntervalDays         15
```

Two eggs per laying, but only one fertilization available. Earlier version of this doc, README and changelog said mated teshi therefore lays one fertilized egg and one unfertilized. Reading `CompEggLayer.ProduceEgg` in compiled game says otherwise; 4a written to the reading: `ProduceEgg` makes **one stack** of `eggCountRange` eggs, all fertilized def while fertilization left, all unfertilized def otherwise. Stack is two fertilized eggs. Unfertilized def chosen only when no fertilization left, and laying without one stopped at 0.9 (4b), so teshi never lays it. If 4a shows stack of one and stack of one, reading wrong.

### 4a. Mated female

Tame one male and one female, keep together, let laying cycle complete. In dev mode egg-layer comp offers debug gizmo advancing cycle by a day; push until she lays.

**Expect:** one stack of two `teshi egg (fert.)` on ground, no `teshi egg (unfert.)`. Female has no fertilization left afterwards, so does not lay again until mated.

**Fails if:** stack anything else, or exception in log at moment of laying, naming `CompEggLayer` or `ThingMaker.MakeThing`.

### 4b. Lone female

Tame single female, no male anywhere on map, advance cycle same way.

**Expect: nothing, ever.** She never lays. Was open question of this doc, now answered, not by playing but by reading compiled game, in `CompEggLayer`:

- `CompTick` accumulates `eggProgress`, and while animal unfertilized writes `eggProgressUnfertilizedMax` straight into that field — progress *pinned* to setting, not merely compared against it. Teshi's setting 0.9.
- `CanLayNow` requires full `1` of `eggProgress`.

Pinned at 0.9, needing 1, she stopped for good. Inspect string should say so: comp has `ProgressStoppedBecauseUnfertilized` state for exactly this case.

So scenario now confirmation, not experiment. **Fails if** she lays anything at all — would mean reading wrong, and `Run-Functional-Tests.ps1` should have caught it first.

What that settles about def: crash this mod's docs once described not possible for lone teshi, and same reading shows unfertilized def not reached by mated laying either. Declared because every egg-layer in Core declares one, and it is what dev-mode lay-egg on female with no fertilization left would ask for. Harmless, and not the fix changelog says.

## 5. The egg hatches

Leave fertilized egg somewhere warm, advance fifteen days, or use dev gizmo on egg.

**Expect:** teshi kits, tame, belonging to colony: laid stack of two eggs hatches into two.

**Fails if:** hatches into nothing, or wrong pawn kind.

## 6. The desiccated corpse — known defect, confirm it is only cosmetic

Kill teshi, let corpse dry out, or spawn desiccated corpse directly.

**Expect:** dromedary's desiccated sprite, at three draw sizes. **Correct behaviour for this mod.** Shooki's own choice, inherited deliberately, recorded in `ATTRIBUTION.md`; inventing replacement art would make this rewrite, not port.

**Fails if:** pink box, or exception. Borrowing texture intended; failing to find it not.

## 7. Predator and manhunter, sanity only

Port touched none of these, so regression check, not verification.

- `manhunterOnDamageChance` is 0.75: shoot wild teshi once, should turn manhunter about three times in four. Has four times human's health pool, so do away from colony.
- `manhunterOnTameFailChance` is 0.05: failed taming should rarely provoke it.
- `predator` is true: wild teshi should hunt, not graze.
- `nuzzleMtbHours` is 12: tame one should nuzzle colonists within a day or so.

## 8. The optional integration with A Dog Said... Animal Prosthetics 2

Only with that mod (`SamBucher.ADogSaidAnimalProsthetics2`, Workshop 3238353862) enabled, in load order RimWorld computes: this mod loads before it, because `About.xml` says so and its page asks for it. `Patches/ADS2_Categories.xml` writes teshi into categories that mod uses to decide which animals may receive prostheses.

Spawn teshi and grizzly bear, select each, open Health tab, look at *Add bill* → operations.

**Expect:** teshi offered same prosthetic and bionic recipes as grizzly bear, which that mod already puts in category 3. Whether given prosthesis applies decided by parts of teshi's body, that mod's arithmetic.

**Also, since 2026-09-26:** two arm recipes of that mod target `Shoulder` teshi's body lacks, and `Patches/ADS2_Arms.xml` adds `Arm` to both. Scenario asks recipe worker whether each recipe applies to each arm and applies its effect, then reads hediff on arm. Bill given to doctor, with medicine and skill check, not played: game's own job, scenario stops at recipe's effect.

**Fails if:** teshi offered none of that mod's recipes, or fewer than bear, or error names `ADS_Cat3` or patch at startup. And with other mod **absent**, mod must load exactly as in scenario 1: patch finds nothing, must log nothing.

## 9. A new game with the mod

Start new colony with this mod enabled, from main menu, play first minutes.

**Expect:** world and first map generate without error, teshi defined, nothing from mod logged. Fixture colony of other scenarios saved without mod, so only this scenario shows colony that starts with it.

**Fails if:** error or warning names mod during start, or teshi not defined afterwards.

**Random, used sparingly.** New colony never same colony twice: world, starting tile, colonists differ each start, whatever seed scenario names. Three consequences.

- Green shows one draw clean, not every draw. Red may not return on rerun, and rerun going green does not clear it: read run's `new-colony` attachment, which names choices, tile, colonists, keep with report.
- Asserts only what draw cannot change: defs, and nothing from mod logged. Anything depending on what colony holds does not belong.
- Played in initial or final validation, once, never in fix or exploration loop, where fix would be judged against different colony each time. Anything that must repeat played on fixture colony instead.

## 10. The optional integration with Nocturnal Animals

Only with [XND] Nocturnal Animals (Continued) (`Mlie.XNDNocturnalAnimals`, Workshop 2269731409) enabled. `Patches/NocturnalAnimals.xml` gives teshi crepuscular body clock, owner's choice, not source's. Select teshi, open information card.

**Expect:** card names crepuscular rhythm, teshi awake at dawn and dusk. Nothing from this mod logged. With other mod **absent**, mod must load exactly as in scenario 1: patch is `FindMod`, must log nothing.

**Fails if:** teshi missing from game, which is what missing extension class does when patch not under `FindMod`, or rhythm not crepuscular, or error names patch at startup.

---

## What to send back

`Player.log` from session, plus one line per scenario saying what happened — incl. game version and mod list. Scenarios 1 to 10 listed here, Pickle suite plays them; hand session plays what it did not.

## Translation display — English and French

Unverified until performed in RimWorld 1.6. Repeat in both languages: inspect adult and baby teshi, both egg types, melee attack labels, all custom body-part labels in health tab. Check baby singular/plural, accents, raw keys, English fallback in French, formatting, clipping. Record results and Player.log evidence in STATUS.md.

---

## What `tested` requires

Read from `../AUDIT.md`, transition `done -> tested`. Pickle suite played since 2026-09-24; STATUS.md says what found and what still open. Not-yet-played is pending work, not pass.

- Every scenario above played in game, or listed here as not applicable with reason.
- Pickle suites run green, `@review` captures opened and looked at. Read `exitReason` before counts, compare scenarios played with features discovered.
- No scenario left tagged `@wip`: repaired and replayed, or deleted with justification.
- Every conditional scenario (`@requires:<packageId>`) had its pass, with map mounting that mod. Three: `08-ads2-integration`, needs A Dog Said... Animal Prosthetics 2, `09-new-colony`, needs NewColony tool, `10-nocturnal-integration`, needs [XND] Nocturnal Animals (Continued). Run without mod skips scenario, skipped scenario not passed one. Mod needs no DLC, DLC in `loadAfter` ordering only.
- No manual test left to validate. Each of ten scenarios becomes green Pickle scenario or listed not-applicable. Suite in `Tests/Pickle/`: see its README and table below.
- Both languages played, one pass each (`-Language English`, `-Language French`), in developer mode: accented gibberish means key missing from active language, clean English inside French means string never went through translation.

### Scope of the Pickle suite

Only what running game can show. Rest already proved offline by `scripts/Run-Functional-Tests.ps1`. Features in `Tests/Pickle/Mod/Pickle/Features/`; `Tests/Pickle/README.md` says how to run.

| Scenario | Fate | Feature | Why |
| --- | --- | --- | --- |
| 1. It loads | Pickle | `01-loads` | Only a load shows def that failed and went silently absent, and Wildness game computes for animal. |
| 2. The animal draws | Pickle, `@review` captures | `02-draws` | Pink box is rendering fact. Three captures show nine textures on all four facings. Captures still have to be opened. |
| 3. Wildness reads 50 % | Pickle | `01-loads`, `02-draws` | Game's computed value asserted in 01, off race, and in 02, off living animal. First run showed information card's list longer than window and Wildness sits below fold, so its capture shows card opens and reads in English, not offered as proof of 50 %. Offline suite shows stat accepts 0.50, not that game reads it. |
| 4a. Mated female lays | Pickle, `@slow` | `03-laying-and-hatching` | One stack of two fertilized eggs, no unfertilized egg, for colony: behaviour through game's own job. |
| 4b. Lone female | Not applicable | none | Read off compiled game (`CompEggLayer`) by offline suite. A run would test the engine. |
| 5. The egg hatches | Pickle, `@slow` | `03-laying-and-hatching` | Two kits belonging to colony, from eggs she laid. Needs hatcher's own tick. |
| 6. Desiccated corpse | Pickle, `@review` capture | `04-desiccated-corpse` | Borrowed dromedary sprite not shipped in the clear, no file reveals it. |
| 7. Predator and manhunter | Not applicable | none | Declarations; mod answers for what it declares: read in XML. Offline suite proves each written field has reader in game, not its value, so values settled by reading XML, change only with it. 0.75 roll random, engine's to honour; test of it would test the game. |
| 8. Optional integration with A Dog Said... Animal Prosthetics 2 | Pickle, `@requires`, third pass | `08-ads2-integration` | Offline suite has no copy of other mod, so checks only patch's shape. Only game shows teshi offered same recipes as grizzly bear, and, since `ADS2_Arms.xml`, both arm recipes apply to each arm and leave their hediff (played 2026-09-27). |
| 9. A new game with the mod | Pickle, `@requires`, own pass | `09-new-colony` | No saved game reaches colony starting with mod: world and first map generated with animal in them. Random, so played once in validation, not in fix loops. First run, 2026-09-25, failed in tool, which started game with Ideology on and no ideoligion and no starting pawns; passed 2026-09-26 once tool fixed. |
| 10. Optional integration with Nocturnal Animals | Pickle, `@requires`, own pass | `10-nocturnal-integration` | Offline suite has no copy of other mod, so checks only patch's shape, and that extension written nowhere but in `FindMod`. Only game shows class found, extension parsed, teshi kept. |
| Save and reload | Pickle | `05-save-reload` | Animal and egg survive round trip; fixture colony, saved without mod, is mod added to existing colony. |
| FR / EN display | Pickle, one pass per language | `06-labels-en`, `07-labels-fr` | Labels and descriptions read off loaded defs, and health tab with each claw and ear on own side; and since 2026-09-27 information card of kit and fertilized egg in both languages, and of adult in French, seen on screen. |

## Evidence to keep

Raw Pickle reports live on disk in `Tests/Pickle/Evidence/<run>/`, which `.gitignore` excludes: captures and `Player.log` grow without limit. Pass `-EvidenceDir` to launcher so report copied there before lock released, then check `exitReason` and played and discovered counts in each copy.

Keep, per scenario, latest report for revision now in repository. Keep older one only when sole proof of check latest run did not repeat. Delete every other report as soon as newer one replaces it, after listing what goes and what stays. Never delete report `STATUS.md` still points to: repoint first. History is one text line per run in `docs/runs/`, never a folder. Shared Pickle report folder holds every mod's screenshots: keep only this mod's.

Proofs worth keeping for this mod, only these:

- animal drawn on each facing: one capture per sex and life stage (adult male, adult female, kit), no pink box;
- stack of two `teshi egg (fert.)` on ground after mated laying, none of unfertilized egg;
- hatched kit, tame and belonging to colony;
- desiccated corpse;
- health tab of adult teshi in English and French, showing custom body-part labels;
- `Player.log` of each pass, already searched for `XML error`, `Could not resolve cross-reference` and names `Teshi`, `EggTeshiFertilized`, `EggTeshiUnfertilized`: only newest per pass.

Capture minified before kept: drop ones verdict does not rest on, crop to panel proving point, or re-encode as JPEG (quality 80, at most 1280 px wide). Never retouch one, keep original of capture that has to be measured. Text reports (`summary.md`, `junit.xml`) small, stay whole; `report.html` and `messages.ndjson` go.

Today nothing to sort: no Pickle run made, so no report sits in this repository, in git or on disk.