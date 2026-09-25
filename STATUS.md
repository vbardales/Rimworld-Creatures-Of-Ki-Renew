---
localization: complete
translation_en: complete
translation_fr: complete
settings_audit: not_applicable
mod:          Creatures of Ki - Teshi Renew
packageId:    nelim.creaturesofkirenew
repo:         Rimworld-Creatures-Of-Ki-Renew
remote:       https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Renew.git
local_path:   C:\Users\nelim\Documents\rimworld\CreaturesOfKiRenew
visibility:   public
detached:     yes
stage:        done
licence:      open
licence_spdx: MIT
licence_github_detection: Other (NOASSERTION)
licence_at:   LICENSE and Mod/LICENSE, copyright 2020 Mlie
dependencies: none
showcase:     complete
tested_on:     2026-09-25, the last Pickle run on the headless WSL game, partial, see the entry at the top
workshop:     3806709627
maintainer:   Claude Code, the session named in session, which holds this standalone repository
session:      local_ebbf6354-e959-4188-bafe-63729c5190ff
updated:      2026-09-25, ADS2 exploration read, kept by the session that holds this mod
remaining:
  - unverified: English and French display of the animal, its eggs and its kit in the game's own panels. The labels and descriptions of the loaded defs were asserted in both languages and the health tab was seen in both on 2026-09-24, with no accented gibberish; the egg and kit names and the information card in French were not seen on screen.
  - unverified: of the eight TESTS.md scenarios, 1, 2, 3, 4a, 5 and 6 have passed in Pickle, on 2026-09-24 and 2026-09-25; 4b and 7 are not applicable; 8 needs A Dog Said... Animal Prosthetics 2 and its exploration ticket has not answered yet.
  - unverified: new-game loading. Saving and reloading a colony with a teshi and an egg passed on 2026-09-24 (05-save-reload), in a fixture colony saved without the mod; a new game started with the mod has not been played.
  - unverified: to reach tested (AUDIT.md transition 9), one final validation must play every scenario of the three passes green, with exitReason read before the counts, minimal English, minimal French, and English with A Dog Said... Animal Prosthetics 2 mounted, which is already in the WSL cache. The scenarios that failed on 2026-09-24 pass since the fix rerun, but the final validation replays them with the rest. The captures of the female, the kit and the corpse were taken before the zoom was added and are to be replaced and looked at again. No @wip exists; the one conditional scenario, 08-ads2-integration, is played only in the third pass, since a skipped scenario is not a passed one, and its first play failed on the harness load order and is being rerun with the order written in the map. No manual test is left to validate, since each of the eight TESTS.md scenarios is a Pickle scenario or a listed not-applicable (4b, 7).
  - feature: the teshi cannot receive the simple or the bionic arm from A Dog Said... Animal Prosthetics 2, whose two arm recipes target a `Shoulder` that this mod's body does not have; only the paw recipes reach its front limbs. Adding `Arm` to those two recipes' appliedOnFixedBodyParts would give it the arms, but it rewrites another mod's recipes for every animal with an Arm, so it is left for the owner to decide and not done.
  - unverified: the optional integration with A Dog Said... Animal Prosthetics 2 (Mod/Patches/ADS2_Categories.xml, loadBefore in About.xml) has been checked offline for its shape only. The category names ADS_Cat1 to ADS_Cat3 were read from that mod's repository on 2026-09-24, not from an installed copy; that the patch lands, and that the teshi is offered the same recipes as a grizzly bear, is what 08-ads2-integration shows. That mod is already in the WSL cache, found on 2026-09-24 (packageId SamBucher.ADogSaidAnimalProsthetics2, a 1.6 folder), so the pass only had to be queued. The Steam page of item 3806709627 has no Compatibility paragraph, and only a hand edit can add it.
  - unverified: the Steam page of item 3806709627 and the private item still carry the old egg paragraph, which SetItemDescription sent at creation and only a hand edit can change. The texts of README.md, CHANGELOG.md, ATTRIBUTION.md, TESTS.md and Mod/About/About.xml say what CompEggLayer.ProduceEgg does, and 03-laying-and-hatching confirmed it in game on 2026-09-24, a mated teshi lays one stack of two fertilized eggs and no unfertilized egg, and they hatch into two kits that belong to the colony.
  - unverified: the icon Mod/About/ModIcon.png was edited by a session on 2026-09-13 with the built-in image tool, and AUDIT.md reserves icon generation to the owner alone; whether the owner accepts that edit is not known. The previous icon is kept at Art/ModIcon-before-2026-09-13.png. Not touched by this audit.
  - unverified: prepublished will need the Workshop description to carry, after the body, the IF I GO QUIET, AI-GENERATED and THANKS sections, the ATTRIBUTION.md line and the final Source code on GitHub link (AUDIT.md transition 10). The 0.1.0 upload sent the About.xml of 3449ee5, which holds none of the three headings, and SetItemDescription is only called at creation, so any change is by hand on the Steam page. The item's page has not been read by a session.
  - unverified: the private 0.1.0 item was uploaded from the working tree and probably carries the nine .dds caches that git never held; check its file list.
---

# Creatures of Ki - Teshi Renew — status

## ADS2 exploration — 2026-09-25

Newest entry; where it disagrees with the sections below, it wins. The single-scenario ticket `e32f` played `08` with
A Dog Said... Animal Prosthetics 2 mounted, at revision `bb50ad1`, tree clean. **`exitReason` failed, 1 discovered,
1 played, 0 passed.** The failure is the harness's, not the mod's, and it is fixed in the map; the mod's patch has
still not been seen to land.

- **What failed.** The scenario stopped on its first assertion. The load order it read was ADS2 first, then this
  mod. The staging does not read `loadBefore`: it activates a map's mods in the map's order, then the mod under
  test. So ADS2 was ahead of this mod, which is the order its author warns against, since its own patch copies the
  category lists into the recipes before ours could add the teshi. The recipe count was never reached.
- **The fix.** `wsl-deps.avec-ads2.map` names this mod's own packageId ahead of ADS2, which puts it there and makes
  the staging skip its own copy. The declared `loadBefore` stays as it is; it is what a player's sort reads, and an
  offline test asserts it. The scenario is rerun, alone.
- **The evidence copy broke.** A failure capture named after the feature and the scenario came to 226 characters,
  over the Windows path limit, the launcher stopped copying, and the folder holds the report files and the
  `Player.log` but no capture. Feature and scenario names are shortened, all under 120 characters. The dispatcher
  has reported the copy fault to the owner.
- **Archive.** This run's archive, `pickle-reports-archive/0925-1119`, held 1,762 files and 1.8 GB, a full copy of
  the shared folder. It was listed, checked against this run's summary, and deleted with an extended-length path
  because some names were over the limit. The other archives were left alone. The kept evidence is the run's
  `junit.xml`, `summary.json`, `summary.md` and `Player.log`, 0.1 MB, and `docs/runs/2026-09-25.md` has its line.
- **Nothing else changed.** The stage stays `done`.

## Fix rerun — 2026-09-25

Older than the entry above; where it disagrees with the sections below, it wins. The one small ticket for the fix, `1e4b`, was
played by the dispatcher on the minimal English set at revision `8a0dbcf`, tree clean, and `docs/runs/2026-09-25.md`
has its line. **`exitReason` passed, 3 discovered, 3 played, 3 passed.** The fewest scenarios that test the fix
were chosen, as an exploration or a fix ticket should.

- **`01-loads` passes.** With the two local steps it reached the Wildness: the game computes 0.5 for the race.
  The same value was then read off a living animal in the second scenario and passed. This is the first time the
  port's Wildness change has been seen in the running game.
- **The zoom works, modestly.** The adult male row is about a third larger than in the first run and still shows
  all four facings with no pink box. The animals stay small on a 1920 pixel capture; it is readable, not
  generous.
- **The information card capture still does not show Wildness**, as expected, since its list scrolls. It shows the
  card opening with the English description. Its scenario is named for what it asserts, and the capture is not
  proof of 50 %.
- **Log.** Nothing names this mod except the test companion's "did not load any content" error, which every
  step-only mod produces. The companion's missing-download-URL warning is gone.
- **Evidence.** The first run's zoom-less adult male capture and its information card capture were deleted, replaced
  by this run's, after listing them; this run's two captures were re-encoded and its report files removed.
  `Tests/Pickle/Evidence/` is 1.3 MB. The first run's female, kit, corpse and health captures stay until the final
  validation replaces them.
- **The stage stays `done`.** `tested` needs the final validation and the ADS2 pass. The exploration ticket for
  `08` (`e32f`) is still queued.

## First Pickle runs — 2026-09-24

Older than the entry above; where it disagrees with the sections below, it wins. The dispatcher played the three requests on
the headless WSL game at revision `bce0ee2`, tree clean. `docs/runs/2026-09-24.md` has one line per run.

| Run | `exitReason` | Discovered | Passed | Failed | Skipped |
|---|---|---|---|---|---|
| English without the slow laying | failed | 10 | 8 | 1 | 1 |
| English, the laying and hatching | passed | 2 | 2 | 0 | 0 |
| French | failed | 3 | 2 | 1 | 0 |

`exitReason` was read before the counts, and every run went to its end. Played against discovered agrees in all
three: 10 of 10, 2 of 2, 3 of 3, the skipped one being `08`, skipped by its ADS2 requirement as intended.

- **The one failure is the test's, not the mod's.** `01-loads` failed in both languages in under a second:
  Pickle's own stat step refuses "Teshi", which names both a `ThingDef` and a `PawnKindDef`. It never reached
  the Wildness. Two local steps replace it, one that names the type and one that reads the stat off a living
  animal, and the scenario is rerun.
- **The laying reading is confirmed in game.** A mated colony female laid one stack of two fertilized eggs and no
  unfertilized egg, and those eggs hatched into two kits that belong to the colony.
- **Save and reload passed**, the corpse and the labels in both languages passed.
- **Logs.** No error and no warning names this mod in any of the three `Player.log`, and no XML error or unresolved
  reference. What is logged is the test companion's: a warning that its dependency lacks a download URL, and an
  error that it "did not load any content", as every step-only mod does. The companion's About now carries the
  URL.
- **The seven captures were opened and looked at.** Nine textures drew on all four facings for the adult male,
  the adult female and the kit, with no pink box; the dessicated corpse drew as the dromedary's bones with the
  status line "Teshi (dead)"; the health tab named each claw and ear on its own side in English and in
  French, with the longer French labels wrapping cleanly and no accented gibberish. Two reserves, both about
  the capture and neither about the mod: the animals are about forty pixels wide, so the fix adds a zoom; and the
  **information card capture does not show the Wildness line**, which sits below the fold of its scrolling
  list, so that capture does not prove 50 %. The value is now asserted off the living animal, and the capture
  is not offered as proof of it.
- **Evidence.** Two failure captures and the derived `report.html` and `messages.ndjson` were deleted after
  listing them, and the seven kept captures were re-encoded as JPEG, 1280 px wide: 65 MB became 1.2 MB.
  `Tests/Pickle/Evidence/` is on disk, not in git.
- **The stage stays `done`.** `tested` needs the failed scenario green, the captures the fix changes looked at
  again, and the third pass with ADS2, whose mod is in the WSL cache and whose scenario is queued.

## Pickle tickets — 2026-09-24

Older than the entry above; where it disagrees with the sections below, it wins. The owner asked for the runs to go through the
ticket dispatcher (`Rimworld-Ticket-Dispatcher/`, `docs/WELCOME.md`), with no follow-up task in this session, and
for small tickets: a validation plays every scenario of its pass, a fix or an exploration as few as it can.

- **Registered** with the dispatcher by message (`REGISTER local_ebbf6354-e959-4188-bafe-63729c5190ff`). It answered that this session is autonomous:
  the three requests are deposited, the old direct tickets are dead, and later runs go straight to
  \Submit-PickleRun.ps1\ without writing to it first. It wakes this session at \START\, \END\ and \RUN_DONE\.
- **Three requests dropped** with `Submit-PickleRun.ps1`, all first runs and so all scenarios of their pass:
  `20260924-164447-947-54ad` English without the slow laying, `20260924-164448-628-681f` the slow laying and hatching
  alone, `20260924-164449-372-9aa5` French. Evidence goes to `Tests/Pickle/Evidence/2026-09-24-english-fast`,
  `-english-slow` and `-french`. Nothing has run.
- **Two older direct tickets**, 40904 English and 42836 French, launched before the dispatcher was known, are gone.
  When the owner asked for them to be withdrawn, at about 16:50, both launcher processes had already exited and
  neither ticket was in the queue any more, which by then held two entries and none of this mod's. They had
  played nothing: no report, no evidence folder, and the lock was never this session's. Nothing was killed or
  deleted by this session. Why they left is not known; the dispatcher may have taken the queue over.
- **No watcher** is left: the Monitor that was armed has ended and none will be armed again.

## Optional integration — 2026-09-24

Older than the entry above; where it disagrees with the sections below, it wins. The owner asked for the mod to take
[A Dog Said... Animal Prosthetics 2](https://steamcommunity.com/sharedfiles/filedetails/?id=3238353862)
into account natively. Read from the Steam item, its API record and its repository (no installed copy):

- **What that mod asks.** An animal receives prostheses by being listed in one of three abstract recipe
  categories, `ADS_Cat1` to `ADS_Cat3`, that nest; category 3 also gets bionics and holds the trainable
  animals, the bears, wolves, wargs and cougars among them. The page asks any mod that builds compatibility
  in to load **before** it.
- **Read against the source, 2026-09-24** (the repository, from its GitHub API and raw files; still no installed
  copy). Its `z_Category_Patches.xml` copies the three category lists into the real recipe bases at patch time,
  with the XML Extensions variant doing the same, and its "free for all" setting copies the category 1 list into
  all artificial-part recipes. That confirms the load-before rule, since a patch applied after that copy is too
  late, and it confirms that the teshi belongs in all three lists. The other mods' compat patches write the same
  three names the same way. Of its 25 recipes, the teshi's body has the target part for those on the leg, ear,
  eye, heart, kidney, lung, spine, stomach, tail and jaw, and for the wooden paw and the power claw. It has none
  of the antenna, beak, tongue, insect and turtle parts, and no `Shoulder`, which the simple and the bionic arm
  recipes target: the teshi's front limb is an `Arm` ending in `Paw` claws.
- **What was built.** `Mod/Patches/ADS2_Categories.xml`, one `PatchOperationConditional` on the category
  existing in the merged defs, that writes `Teshi` into all three lists; `loadBefore` on
  `SamBucher.ADogSaidAnimalProsthetics2` in About.xml; a Compatibility paragraph in About.xml, README.md,
  CHANGELOG.md and ATTRIBUTION.md. Nothing is required: no `modDependencies`, no `LoadFolders.xml`, and with
  the other mod absent the patch finds nothing and logs nothing.
- **The judgement call.** Category 3, because the teshi is trainable to intermediate and as large as a bear, and
  the bears are category 3 there. The owner may prefer category 2 (simple prostheses without bionics).
- **`dependencies` stays `none`.** The field's vocabulary is for a hard dependency that is missing or
  undeclared; this is an optional integration, declared in `loadBefore` as the other mod asks.
- **Checked without a game.** `Run-Functional-Tests.ps1` has a new test, 21 in all, 0 failed: the patch is one
  conditional operation, adds only this mod's own animal to the three categories, About loads it before the
  other mod and declares no hard dependency. It was seen to go red on a copy with the `loadBefore` removed and
  the animal name misspelt. The Pickle suite has a new scenario and a pass map, `08-ads2-integration` and
  `wsl-deps.avec-ads2.map`; the assembly rebuilds and every one of the 152 step lines resolves to one step.
- **Not done.** Nothing of this integration has been played. The other mod was found in the WSL cache afterwards and one exploration ticket, 08 alone, was queued for it.

## Pickle scenarios written — 2026-09-24, back to `done`

Older than the entry above. The audit below found `preTest` for one
reason, the Pickle scenarios not being written. They are now, so **the stage is `done` again** (transition 8).
Nothing else in that audit changed, and its checks stand.

- **The suite** is `Tests/Pickle/`: a companion mod (`Creatures of Ki - Teshi Renew - Pickle tests`), seven
  features and 13 scenarios (14 with the integration entry above), 23 local steps in `Source/TeshiSteps.cs`, two pass maps, and `Check-Steps.ps1`.
  `README.md` there says what each feature shows and why it needs a game, what is deliberately not in Gherkin,
  the two passes, and eight assumptions a first run confirms or breaks. The scope is justified in `TESTS.md`.
- **Checked without a game**: the step assembly builds against the installed game and Pickle with no warning,
  and `Check-Steps.ps1` reports every one of the 146 step lines resolving to exactly one step and every local
  pattern compiling. It was seen to go red on an undefined step. `Run-Functional-Tests.ps1` still passes.
  **Nothing was played**: no RimWorld was started by hand, by any route. Two direct tickets were queued afterwards
  through the shared launcher, then replaced by three small requests dropped with the ticket dispatcher (see the
  entry above the integration one), and nothing has run.
- **A finding that changes documents**: the mated laying makes one stack of two fertilized eggs, not one
  fertilized and one unfertilized. TESTS.md, README.md, CHANGELOG.md, ATTRIBUTION.md and Mod/About/About.xml
  were corrected to that reading in a later commit of the same day, each keeping the history of what it used to
  say. The Steam page still holds the old paragraph: see `remaining`.
- **Evidence**: still none to sort, since nothing has run. Pickle steps also cover Wildness now: the value the
  game computes in `01-loads` and a capture of the information card in `02-draws`; TESTS.md 3 is no longer
  "not applicable".

## Audit — 2026-09-24, `done` -> `preTest`

Superseded on the stage by the section above; its checks stand. `AUDIT.md` was applied as it
stands today, including the clarification of 2026-09-21 on what `done` requires. The stage values
are the workflow's literal states, no codes.

**Old stage `done`, stage kept `preTest`.** The audit of 2026-09-13 below predates the present
`AUDIT.md`. Transition 8 (`preTest -> done`) now asks for the Pickle scenarios to be **written**, with
their scope justified, and none exists: no `Tests/Pickle/`, no feature file, no companion mod. Every
other criterion of that transition holds, so this is a missing artifact and not a failed test. Nothing
was written to make the gate pass: the audit does not create features or tests.

**Audited revision** `3449ee5fa011806a16c5999a7bbcea4f803d96fb`, equal to `origin/main` after a fresh
fetch. Local modifications at the start: `Mod/About/PublishedFileId.txt` untracked, and nine `.dds`
files untracked in `Mod/Textures/`. Commits made since, pushed to `origin/main` on 2026-09-24: `98a7c49` (the file id),
`0b99ae5` (CHANGELOG), `c51e2b6` (`.gitignore` and the texture test) and `70c167e` (this audit), then the
fixes that followed the review of those four, in the commit that carries this sentence.

### Transitions, re-read against the disk

| Transition | Result | Basis |
| --- | --- | --- |
| dansMonoRepo -> horsMonoRepo | Validated | Own `.git`, remote `origin`, `origin/main` equals the audited SHA. Public, licence `open`, MIT. `LICENSE` and `Mod/LICENSE` are byte-identical. README, ATTRIBUTION, CHANGELOG in English. |
| -> ModIcon generated | Validated, one reserve | `Mod/About/ModIcon.png` is 128 x 128 RGBA, opened and looked at. No build: XML and textures only. See the icon line in `remaining`. |
| -> Preview generated | Validated | `Mod/About/Preview.png` is 896 x 504, 665,299 bytes, under 1 MB, opened and looked at. |
| -> preOptions | Validated | Title and version readable, blue rule distinct from the golden secondary ink, description in English, name kept as `Creatures of Ki - Teshi Renew`. |
| -> options | Justified not applicable | No assembly, no C#, no settings class, no MainButton, no LoadFolders or patch in `Mod/`. Neither an empty page nor a shortcut can exist. `settings_audit: not_applicable`. |
| -> l10n | Validated | `../scripts/Check-DefInjected.ps1 -TransMod Mod`: 31 keys, 0 errors. Independent count of the French files: 19 BodyDef, 9 ThingDef, 3 PawnKindDef, 31 in all. English is the native Def value. |
| -> preTest | Validated | No dependency, none declared, none used: the suite resolves every reference against Core alone. `loadAfter` lists the DLC for ordering only. |
| preTest -> done | **Not reached** | Scenarios written (TESTS.md, seven), automated and XML tests green, results tied to the shipped `Mod/`. Pickle scenarios not written and their scope not justified as a suite: see below. |
| done -> tested | Not evaluated | The mod has never run. |

### Checks run

1. `_tools/Run-Functional-Tests.ps1`: first run **19 passed, 1 failed**. The orphan-texture test read
   the nine `.dds` caches the game wrote beside the PNGs on 2026-09-23 as textures no def asks for.
   That was the test's fault, not the mod's: it now accepts a `.dds` under the same names as the PNG
   (`c51e2b6`). Rerun: **20 tests, 0 failed**, against 6,063 Core defs, 438 abstract bases and 16,130
   assembly types.
2. `../scripts/Check-DefInjected.ps1 -TransMod Mod`: 31 keys checked, 0 errors.
3. `file` on both images, then both opened. `cmp LICENSE Mod/LICENSE`: identical.
4. `find Mod` for `*.dll`, `*.cs`, `LoadFolders.xml`, `Patches`: nothing.
5. `git fetch` then `git rev-parse HEAD origin/main`: same SHA.

Not done, on purpose: no RimWorld was started, by any route (`AUDIT.md`, the absolute rule). No image
was generated or edited. No Pickle ticket is held, since there is nothing to queue; once a suite
exists, the wait is watched with `Monitor` on `scripts/Pickle-Status.ps1`, never with a cron.

### Prepublication 0.1.0

- **Workshop item `3806709627`**, created on 2026-09-23 by a prepublication upload from this working
  tree. Steam creates every item private and RimWorld never changes that. `Mod/About/PublishedFileId.txt`
  is committed in `98a7c49` and pushed. The item's page has not been read by a session.
- A prepublication is an act, not a stage (`AUDIT.md`, transition 11): it moves nothing.
- `CHANGELOG.md` opens its released history at `0.1.0`, with `1.0.0` still unreleased above it.
  The upload held `Mod/` as it stood at `3449ee5`, and `Mod/` is unchanged since.
- The nine `.dds` files were written at 14:13, the file id at 14:31: the private item probably carries
  them. `*.dds` is now ignored; the files stay on disk. None was ever in git.

### Evidence

There is none to sort. No Pickle run exists, so no report sits in `Tests/Pickle/Evidence/`, in git or under `docs/runs/`.
The shared folders were searched on 2026-09-24, not just listed: the 17 folders of `pickle-reports-archive/`
are named by time, eight of them `stalled-<Mod>` with a `Player.log` and none for this mod, and the
`summary.md`, `summary.json` and `junit.xml` of the nine others and of `pickle-reports/`, plus its
`Player.log`, hold neither `Creatures of Ki` nor `teshi`. The big files of those folders were not opened. `Tests/Pickle/Evidence/` and
`evidence/` are ignored ahead of the first run, and the proofs worth keeping are listed in `TESTS.md`
("Evidence to keep"). `_tools/audit-2026-09-13-*manifest.json` are audit records that this file points
to: tracked, small, kept.

### The gates, measured

- To reach `done`: write the Pickle scenarios, with their scope justified. `TESTS.md` proposes it:
  scenarios 1, 2, 3, 4a, 5, 6 and one pass per language; 4b and 7 not applicable, with reasons.
- To reach `tested`: no `@wip`; every conditional scenario has run (this mod has none, since it
  declares no optional mod); **manual tests left to validate: all seven scenarios**, each to become a
  green Pickle scenario or a listed not-applicable.

Reserve, not a blocker: the icon. This file records that a session edited it on 2026-09-13 with the
built-in image tool, and `AUDIT.md` now reserves icon generation to the owner alone. Whether the owner
accepts that edit is not known; the previous icon is kept at `Art/ModIcon-before-2026-09-13.png`.

This task maintains this file whenever the repository state changes. Scope is this local
repository only, no longer a monorepo. Git reports this folder as its root, uses its own `.git`
directory, and reports no superproject. GitHub API confirmed `private: false`, `visibility: public`
on 2026-09-12. The remote is `origin`, for both fetch and push.

## Identity and title

The mod name is `Creatures of Ki - Teshi Renew`; its packageId is `nelim.creaturesofkirenew`.
The existing suffix `Teshi Renew` already distinguishes this animal-only continuation from the
original Creatures of Ki. No additional suffix is needed. RimWorld 1.6 is declared in About.xml.
Both the About URL and the description contain the GitHub repository link.

## License and justification

**MIT**, classified `open`. The repository's LICENSE records copyright 2020 Mlie and the upstream
source https://github.com/emipa606/CreaturesOfKi. This continuation inherits the teshi assets and
definitions from Shooki/Mlie; it is not wholly original work. The local license explicitly offers
Nelim's extraction and 1.6 port under the same MIT terms. ATTRIBUTION.md records provenance and
changes. This is the documented basis for retaining MIT rather than choosing a new license.

LICENSE and Mod/LICENSE are byte-identical (SHA-256 checked on 2026-09-12), so the upstream notice
and permission text accompany the distributed mod.

Live GitHub verification on 2026-09-12: the repository and its LICENSE are publicly accessible.
The upstream https://github.com/emipa606/CreaturesOfKi/blob/main/LICENSE.md explicitly contains
the MIT license, copyright 2020 Mlie; GitHub identifies that upstream license as MIT.
Our published https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Renew/blob/main/LICENSE
contains that MIT text plus a provenance and scope appendix. GitHub currently labels our file
`Other` / `NOASSERTION`, not MIT. The appendix is a plausible explanation for the recognition
difference, not a verified diagnosis of GitHub's detector. The declared license remains MIT;
`licence_spdx` records the declared terms, not GitHub's automatic classification.

`visibility: public` describes repository access; `licence: open` describes the explicit permission
to reuse, modify and redistribute under the MIT notice-preservation condition. Public access alone
would not justify `open`. Here the published upstream MIT grant and the local port's explicit MIT
statement justify it. This check verifies the current published texts, not the full historical
chain of rights for every upstream asset.

Steam checked visually on 2026-09-12:
https://steamcommunity.com/sharedfiles/filedetails/?id=2726461020 contains an image banner saying
further support has become too problematic and the mod will remain available for previous game
versions. Mlie's comment dated 2024-04-25 also announces no further updates. No explicit MIT grant
or reuse prohibition was found in the displayed description/banner. The reason for stopping is
unspecified; this is not evidence of permission from every original contributor. The description
credits an anonymous writer/artist collaborating with Shooki and says Mlie recovered the mod via
Skymods. The linked original Steam item 1726422863 currently returns an error, so its terms could
not be checked. MIT is confirmed for the upstream repository, while original asset permissions
remain incompletely traced. Public repository visibility is unchanged.

## Verification

Run from this repository:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File _tools/Run-Functional-Tests.ps1
```

The suite requires the installed RimWorld data and managed assemblies; their locations can be
supplied with `-GameData` and `-Managed`. It has no dependency on scripts in a parent repository.
The original 17 checks passed on 2026-09-12. Three checks were added for shipped XML and packaging,
XML class/graphic types, and body-part/stat references. Reference resolution now uses Core alone,
so an installed DLC cannot hide an undeclared dependency. Latest run on 2026-09-12: **20 tests passed, 0 failed**, against 6,063 Core definitions, 438 abstract bases and 16,130 assembly types.

Coverage includes egg settings and hatcher target, Wildness migration, field readers, body coverage,
attack groups, texture presence and case, inheritance, named references, biomes and food flags.
The old external Check-DefRefs/Check-XmlClasses/Check-XmlFields/Check-TypeRefs tools are not present
in this repository; their historical results are not treated as a fresh run.

TESTS.md provides seven manual scenarios with actions and expected outcomes: loading, directional
rendering, Wildness, fertilized/unfertilized laying, hatching, dessicated corpse and animal behavior.
They exist but have not been executed in game by this task. All remain unverified end to end,
particularly rendering, actual egg laying/hatching and the borrowed dromedary corpse texture.

`stage: done` means implementation prepared, not tested in game or published. `tested_on` stays
empty until an actual game session is recorded; publishing must likewise update `workshop`.

## Preview recomposition — 2026-09-12

Subject checked against the shipped south/east teshi sprites and Races_Animal_Teshi.xml:
Ki is the fictional forest world, not a species. This extraction includes the teshi and its eggs,
not the Kija humanoid race. The definition describes a large bipedal feathered predator; its body
is BipedAnimalWithClawsAndTail. The sprites show a bulky upright animal, four lateral ear-like
appendages, a crest, short clawed forelimbs and a thick banded tail. A resting illustration does
not establish a quadrupedal anatomy; the earlier prose suggesting the artwork disproves the
bipedal description should not be used as an anatomical reference.

The existing illustration was retained as a stylized resting teshi beside eggs. No replacement
was generated. Art/Preview.png is a byte-identical copy of the text-free Art/Preview-source.png;
the original remains intact. The previous composited output is archived at
Art/Preview-before-2026-09-12.png, and its HTML at Art/Preview-text-before-2026-09-12.html.

Current composition: Art/preview-composition.html, with Art/preview-layout.json for geometry and
Art/preview-palette.json as the single source of current overlay colors. Art/Preview-text.html
redirects to the current composition. Reproduce with `node Art/render-preview.cjs` (Node,
Playwright, Sharp and Chrome required; NODE_PATH may point to the bundled runtime packages).
The script checks the exact About.xml title and highest stable supported version before saving.
The summary is unchanged. No status tag applies to this public mod without an unofficial suffix.

Palette rationale: the veil comes from shadowed brown straw, while the secondary ink develops
the dominant ochre family of the straw, lamplight and animal coat into a lighter golden sand.
The accent develops the cool blue-slate paving in shadow into a brighter, more saturated blue;
its hue contrasts with the dominant ochres and the secondary ink. It is deliberately not a second
amber. Final color values are stored only in Art/preview-palette.json.

Rendered at 896 x 504 using Segoe UI: SegoeUI-Semibold for the title including reduced words,
SegoeUI for the summary, SegoeUI-Bold for the version. Actual font faces verified through Chrome's
platform-font inspection after document.fonts.ready. Title 46px/600; `of` and `Renew` at 65%,
with only Renew using secondary ink. Text block at (50,54); version 1.6 from About.xml.
The brown veil holds through 65% of its ellipse to protect the end of the summary.

QA: Art/preview-qa.json records measurements; Art/preview-background-qa.png is the text-hidden
render. Every background pixel within each text span/summary rectangle was measured, not just
four corners. Minimum contrasts: main title 8.33:1, reduced suffix 5.80:1, summary 5.67:1,
badge 8.80:1. No tag to measure. Visual inspection of the final image and Art/preview-268.png
confirmed identifiable title/version, readable reduced title words, visible blue rule, no clipping
or overlap, and a clear creature/eggs silhouette. The summary is intended for the full-size view.

Delivered: Mod/About/Preview.png, 896 x 504, 665,299 bytes (below 900 kB). No publication performed.

## Translation audit — 2026-09-13

Scope: all four XML files under Mod/Defs (five concrete defs), and the three French
DefInjected files under Mod/Languages/French. There are no assemblies, C# sources,
patches, conditional integrations, LoadFolders or additional version folders in this mod.
About metadata, technical comments, IDs, texture paths and repository documents are outside
the in-game translation gate defined in ../TRANSLATIONS.md.

Inventory: 31 owned text fields: 19 BodyDef entries (body label and 18 custom body-part
labels), nine ThingDef entries (animal and two egg labels/descriptions, three attack labels),
and three PawnKindDef entries (animal label, baby label and plural). All English texts are
nonempty native Def values; an English DefInjected copy is unnecessary. French supplies
31 unique, nonempty translations. The proper name teshi is intentionally retained.
Inherited animal, egg, life-stage and body-part UI uses Core's translation mechanisms;
no custom Keyed keys or generated-text resources are introduced. No owned strings contain
format parameters, grammar tokens or rich-text tags. Meanings and French terminology were
reviewed against the English sources, including fertilized/unfertilized eggs and left/right
body parts. Nested injection paths use native translation handles rather than list indices.

Checks: XML inventory count compared with unique nonempty French entries: 31/31.
`powershell -NoProfile -ExecutionPolicy Bypass -File _tools/Run-Functional-Tests.ps1`:
20 tests passed, zero failed against installed RimWorld 1.6 Core and assemblies.
Injection-path check: 31 keys checked, zero errors, no unresolved targets, using
`powershell -NoProfile -ExecutionPolicy Bypass -File ../scripts/Check-DefInjected.ps1 -TransMod Mod`.

Runtime English/French checks remain unverified and are tracked in remaining. Inspect
animal/egg information, the baby name and plural, melee tools and each custom health-part
label in both languages; check fallback English, raw keys, accents and clipping. Historical
stage is preserved; complete translation fields certify static readiness only.

## Ordered workflow audit — 2026-09-13

**Decision: `done` -> `done`.** This is a fresh audit of the working tree, not a
carry-forward of the declared stage. The user's supplied workflow takes precedence over
the parent protocols: settings source checks and applicable automated tests can pass
`options` without a game session; interactive checks belong to `tested`.

The stage values are literal workflow states, not numeric codes. `done` means all gates
through `preTest -> done` are established and final in-game validation is pending.
It does not mean tested in game or published.

### Scope and reproducibility

- Autonomous repository: `C:\Users\nelim\Documents\rimworld\CreaturesOfKiRenew`;
  distributed content: its `Mod/` directory. Git reports this repository root, a local
  `.git` directory, and no superproject. Physical placement under the old workspace does
  not make this repository part of its Git history. No parent remote is required.
- Audited HEAD: `f8fc3f24141f072707f04b04bbbfb182d3f8acbc`.
  At audit start, `CHANGELOG.md`, `STATUS.md` and `TESTS.md` were modified; the three
  `Mod/Languages/French/DefInjected/{BodyDef,PawnKindDef,ThingDef}/Teshi.xml` files were
  untracked. The delivered working tree, including those translations, was tested.
- This audit changes only this status and adds `_tools/audit-2026-09-13-manifest.json`.
  The manifest records relative paths, sizes and SHA-256 for all 20 distributed files.
  Prior edits and historical audit sections above are preserved. No build, generation,
  gameplay modification, commit, push or publication was performed.
- Protocols read: `../PUBLISHING.md`, `../STYLE_RIMWORLD.md`, `../MOD_SETTINGS.md`,
  `../TRANSLATIONS.md`, and applicable `../AGENTS.md`.
- Installed reference environment: RimWorld `1.6.4871 rev590`, Core data and managed
  assemblies under `C:\Program Files (x86)\Steam\steamapps\common\RimWorld`.
  Assembly-CSharp SHA-256:
  `5CF1B5BE399D5B1C9C56CA72C9D35B4ECF307FEACF5859D04AC5A1AA5926356A`.

### Ordered decisions

| Transition | Result | Current evidence |
| --- | --- | --- |
| dansMonoRepo -> horsMonoRepo | Validated | Own Git root and remote; live GitHub API reports public/non-private; `git ls-remote origin HEAD` returns the audited HEAD, establishing a pushed commit. Identity, English documentation and distributed MIT notice checked. |
| horsMonoRepo -> ModIcon generated | Validated; build not applicable | Finished XML-only animal port, no C# project or shipped assembly; 20 automated checks pass. Delivered PNG decodes at 128 x 128, 28,517 bytes; directly inspected. |
| ModIcon generated -> Preview generated | Validated | Delivered PNG decodes at 896 x 504, 665,299 bytes, below 1 MB; inspected directly, with its existing 268-pixel thumbnail. No concrete camera defect found; no historical generation report or comparison screenshot required. |
| Preview generated -> preOptions | Validated | English description; exact About title represented, `of` reduced in primary ink and `Renew` reduced in secondary ink. Blue accent is clearly distinct from golden secondary ink. Title/version readable, no clipping; public/open status needs no unofficial/prohibited suffix. |
| preOptions -> options | Justified not applicable | Settings inventory below establishes no useful settings, empty page or MainButtons shortcut. Applicable automated checks passed; no runtime integration is claimed. |
| options -> l10n | Validated | All 31 owned English Def text values reviewed against 31 nonempty unique French entries; injection validator passes all 31 paths without unresolved targets. |
| l10n -> preTest | Validated | Five concrete definitions use vanilla classes and Core references. Core-only tests pass. No required third-party dependency, conditional patch, LoadFolders or version directory. About supports 1.6; DLC loadAfter entries are optional ordering, not requirements. |
| preTest -> done | Validated | TESTS.md has seven functional scenarios with shared setup, actions and expected outcomes, plus FR/EN display checks. Automated suite and XML checks actually executed successfully on the manifest's working tree. |
| done -> tested | Unverified | No game session was executed or reviewed in this audit; no matching Player.log, bilingual interface results or save-cycle results establish this gate. |

### Settings audit

Inventory covers all four Def XML files, About.xml, language resources, repository file
inventory and the documented scope. This port adds a single animal, its body and eggs
using vanilla animal/egg classes. Wildness (0.50), biome spawn weights, combat/body
statistics, egg interval (15 days), fertilization count (1) and egg count (2) are fixed
content/balance definitions, intentionally preserved by this port. Neither documentation
nor sources offer a player configuration contract requiring XML editing. No configurable
subsystem, optional behavior switch, inherited settings provider or integration-specific
control was found. Turning these constants into sliders would add an unrequested balance
feature rather than expose an existing useful configuration.

No C# source/assembly, ModSettings implementation, settings category, MainButtonDef or
MainTabWindow is present. Native classes used by these Defs provide content behavior, not
a settings page. This establishes the absence of both an empty mod-options page and a
settings shortcut from the sources, as permitted by the user's workflow.
`settings_audit: not_applicable` is therefore justified. Settings input validation,
application timing, reset/migration, persistence and shortcut interactions are not
applicable. RIMMSQOL and other customization integrations: none tested or claimed.
Actual animal/save behavior remains in the final runtime gate.

### Checks executed and observed results

1. `powershell -NoProfile -ExecutionPolicy Bypass -File _tools/Run-Functional-Tests.ps1`
   exited 0: **20 tests, 0 failed**, 6,063 Core named defs, 438 abstract bases,
   16,130 assembly types, five mod defs and 62 written fields. This includes shipped
   XML parsing/packaging, classes, body/stat references, inheritance, egg and Wildness
   checks, field readers, body coverage, combat groups, textures/case, biomes and food
   flags. Reflection/IL checks are technical tests, not a simulation of in-game behavior.
   Suite SHA-256: `F6FA7F6ADFF7C86AD8490196D2D2BF704B3E404895409218BEC59074CE163E6E`.
2. `powershell -NoProfile -ExecutionPolicy Bypass -File ../scripts/Check-DefInjected.ps1 -TransMod Mod`
   exited 0: **31 keys checked, 0 errors**, no unresolved target reported.
   This validator indexes installed DLC as well (11,590 defs); dependency independence
   is established separately by the Core-only suite, not by this larger index.
   Validator SHA-256: `6242FC37F0B43C61967979F7837DB65D80E12BF8A019A4822D58C6532F6A2C6F`.
3. Independent text inventory: BodyDef 19, ThingDef 9, PawnKindDef 3, totaling 31.
   Corresponding French resources have 19/9/3 entries, zero empty values and duplicates.
   Meanings, sided body parts, baby singular/plural and egg types reviewed; no owned
   formatting parameters, grammar tokens, rich-text tags or additional code/UI text.
   Native English sources suffice; inherited texts use vanilla localization.
4. PNG decoding/dimensions/bytes and direct visual inspection of the delivered icon,
   Preview and existing thumbnail. Palette/composition and stored QA JSON inspected;
   historical font/contrast measurements were not rerun and are not presented as new
   measurements. Sources and composition remain outside the distributed folder.
5. `Get-FileHash LICENSE,Mod/LICENSE`: both are
   `D2AA2F4AAE44377CF4563DC2F67365C28ABD3F33CCFE47402245EC6337837B8F`.
   Live GitHub API retrieval of `emipa606/CreaturesOfKi/contents/LICENSE.md` confirms
   MIT, copyright 2020 Mlie. Local provenance and port terms remain consistent with
   that documented grant. No new license is assigned to third-party work. The earlier
   limitation concerning the complete original contributor rights chain remains a
   limitation, not newly established permission or a discovered prohibition.
6. Remote read checks initially failed under restricted access; a permitted read-only
   retry succeeded for Git HEAD, repository visibility and upstream license. No required
   remote-access check remains pending.

### Remaining checks and separate publication/documentation observations

**Next transition, done -> tested:** execute TESTS.md in RimWorld 1.6 with Core and this
mod, record actual results for all seven scenarios and FR/EN displays, inspect Player.log,
and test a new game plus an existing save (including teshi/eggs across save/reload).
Preserve game version, active mod list and evidence tied to the delivered manifest;
rerun affected regression checks after any correction. These are unverified checks,
not known gameplay failures. No settings or RIMMSQOL test is needed for the current mod.

**Observed publication convention defect, outside the supplied stage gates:**
About.xml contains a raw GitHub URL before the license/adoption paragraphs rather than
ending with `[url=https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Renew]Source code on GitHub[/url]`.
PUBLISHING.md requires this before the initial Workshop submission. The user's
`preOptions` gate requires English description and naming, both satisfied; this
publication formatting discrepancy does not add an extra stage blocker. No publication
was requested or performed.

**Non-blocking review notes:** the icon has conspicuous glow/orbital sparkles, a departure
from the current prompt's flat/no-glow guidance, while its single mascot remains readable.
README/About still describe the artwork as contradicting a bipedal animal; the earlier
status inspection correctly notes that a resting pose cannot establish that contradiction.
README's wording that scenario 4 "confirms" the behavior overstates the available runtime
evidence, and ATTRIBUTION's old two-script verification paragraph is stale. These are
documentary/style observations, not new runtime failures or reasons to generate assets.

## Non-blocking audit fixes — 2026-09-13

The user requested correction of the non-blocking findings after the ordered audit.
All four observations above are now addressed; their original descriptions remain as
historical evidence, not current outstanding defects.

- About.xml now ends its English description with the prescribed Steam-formatted
  Source code on GitHub link, targeting this repository. XML parsing and the exact
  final link were checked.
- README/About describe the teshi as bipedal and the showcase pose as resting.
  README explicitly marks scenario 4's in-game confirmation as pending.
- ATTRIBUTION now describes the actual standalone 20-check suite and its limitations,
  corrects the inherited/new Def file count and the lone-female wording, and credits
  the AI icon edit.
- The built-in OpenAI image tool removed the icon's glow, orbital rings and sparkles.
  Delivered Mod/About/ModIcon.png is 128 x 128, 14,065 bytes; directly inspected at
  128 and 32 pixels. Prior icon: Art/ModIcon-before-2026-09-13.png. New source:
  Art/ModIcon-flat-source.png. Exact prompt, method and QA: Art/ModIcon-edit-2026-09-13.md.

Validation: reran _tools/Run-Functional-Tests.ps1 after the shipped edits:
20 tests, 0 failed, exit 0, against the same RimWorld 1.6.4871 rev590 environment.
XML and packaging checks pass. git diff --check passes.
The original manifest is preserved; the current delivery is recorded in
_tools/audit-2026-09-13-post-fixes-manifest.json. Comparing both manifests confirms
that only Mod/About/About.xml and Mod/About/ModIcon.png changed in the distributed
folder. Defs, French translations and gameplay textures are byte-identical, so their
independent translation/settings validations remain applicable.

Stage remains done. No in-game validation, commit, push or publication was performed.
All runtime checks in remaining still await execution.
