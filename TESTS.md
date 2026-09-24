# Creatures of Ki — Teshi Renew: what to check in game

The standalone suite `_tools/Run-Functional-Tests.ps1` provides 20 checks, including XML and Core references. The four external validators formerly cited here are absent from this repository; their historical results are not current verification.

`_tools/Run-Functional-Tests.ps1` sits between the two. It cannot run the game either, but it
reads the compiled game and runs twenty checks this document used to have to ask of a
play session — including the one scenario 4b was written to settle, which is now settled below.
Run it first; it takes seconds and it costs nothing.

The mod has never run. Run these in order: the first one is cheap and catches anything fatal, the
fourth is the only one that can crash a save.

Junction it into `RimWorld/Mods` first — pointing at `CreaturesOfKiRenew/Mod`, not at the repository
root. Play with dev mode on, and keep `Player.log` after the session:

```
C:\Users\nelim\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log
```

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

Select a wild teshi → **Information** tab → find *Wildness*.

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

Two eggs per laying, but only one fertilization available — so a fertilized teshi should produce
one fertilized egg and one unfertilized. That is the path that reaches `eggUnfertilizedDef`, and it
does not depend on the animal laying while unmated.

### 4a. Mated female

Tame one male and one female, keep them together, and let a laying cycle complete. In dev mode the
egg-layer comp offers a debug gizmo that advances the cycle by a day; push it until she lays.

**Expect:** two eggs on the ground — one `teshi egg (fert.)`, one `teshi egg (unfert.)`.

**Fails if:** an exception appears in the log at the moment of laying, naming `CompEggLayer` or
`ThingMaker.MakeThing`. That is the crash the new def exists to prevent, and it would mean the def
is not being found.

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

What that settles about the def: the crash this mod's documents once described was indeed not
possible for a lone teshi. The def is still needed, and 4a is where it earns its place — a mated
female lays two eggs with one fertilization, and the second has nothing to be but unfertilized.

## 5. The egg hatches

Leave a fertilized egg somewhere warm and advance fifteen days, or use the dev gizmo on the egg.

**Expect:** a teshi kit, tame, belonging to the colony.

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

---

## What to send back

The `Player.log` from the session, plus one line per scenario saying what happened — including game version and mod list. All seven scenarios still require an actual game session.

## Translation display — English and French

Unverified until performed in RimWorld 1.6. Repeat in both languages: inspect an adult
and a baby teshi, both egg types, melee attack labels and all custom body-part labels in
the health tab. Check the baby singular/plural, accents, raw keys, English fallback in
French, formatting and clipping. Record results and Player.log evidence in STATUS.md.

---

## What `tested` requires

Read from `../AUDIT.md`, transition `done -> tested`. Nothing below has been done: the mod has never
run, and no Pickle suite exists yet. That is pending work, not a pass.

- Every scenario above is played in the game, or is listed here as not applicable with its reason.
- The Pickle suites run green, and their `@review` captures are opened and looked at. Read `exitReason`
  before the counts, and compare the scenarios played with the features discovered.
- No scenario is left tagged `@wip`: it is repaired and replayed, or deleted with its justification.
- Every conditional scenario (`@requires:<packageId>`) has had its pass. This mod declares no optional
  mod and needs no DLC, so there is none to play, and the DLC in `loadAfter` is ordering only.
- No manual test is left to validate. Each of the seven scenarios becomes a green Pickle scenario or
  a listed not-applicable. The proposal below is what the suite would cover, not a suite.
- Both languages are played, one pass each (`-Language English`, `-Language French`), in developer
  mode: accented gibberish means a key missing from the active language, clean English inside French
  means a string that never went through translation.

### Proposed scope of the Pickle suite

Only what a running game can show. The rest is already proved offline by `_tools/Run-Functional-Tests.ps1`.

| Scenario | Fate | Why |
| --- | --- | --- |
| 1. It loads | Pickle, `no errors were logged` | Only a load shows a def that failed and went silently absent. |
| 2. The animal draws | Pickle, `@review` captures | A pink box is a rendering fact. The captures still have to be opened. |
| 3. Wildness reads 50 % | Not applicable as a scenario | The offline suite reads the stat and its accepted range. Kept as one line in the log check of scenario 1. |
| 4a. Mated female lays | Pickle | Two eggs, one fertilized, one not: behaviour through the game's own callbacks. |
| 4b. Lone female | Not applicable | Read off the compiled game (`CompEggLayer`) by the offline suite. A run would test the engine. |
| 5. The egg hatches | Pickle | Needs the egg's timer to run. |
| 6. Dessicated corpse | Pickle, `@review` capture | The borrowed dromedary sprite is not shipped in the clear and no file reveals it. |
| 7. Predator and manhunter | Not applicable | Declared values, checked offline. The 0.75 chance is random and is the engine's to honour. |
| FR / EN display | Pickle, one pass per language | Health tab body parts, baby name and plural, both eggs, attack labels. |

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
- both eggs on the ground after a mated laying, `teshi egg (fert.)` and `teshi egg (unfert.)`;
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
