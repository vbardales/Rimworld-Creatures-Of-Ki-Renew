---
localization: complete
translation_en: complete
translation_fr: complete
settings_audit: not_applicable
workflow_stage: code[1.1.0]
mod:          Creatures of Ki - Teshi Renew
packageId:    nelim.creaturesofki
repo:         Rimworld-Creatures-Of-Ki-Renew
remote:       https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Renew.git
local_path:   C:\Users\nelim\Documents\rimworld\CreaturesOfKiRenew
visibility:   public
detached:     yes
licence:      open
licence_spdx: MIT
licence_github_detection: Other (NOASSERTION)
licence_at:   LICENSE and Mod/LICENSE, copyright 2020 Mlie
upstream_mod_remotes:
  - https://github.com/emipa606/CreaturesOfKi
upstream_pr:  attempted 2026-09-28, refused (repository archived, read-only). Branch kept on vbardales/CreaturesOfKi teshi-1.6-support
dependencies: none
showcase:     complete
tested_on:     2026-10-11, labels, descriptions, cards and health tab, English and French, on 04c2119 (docs/runs/2026-10-11.md); the full suite of 2026-09-26 and 2026-10-02 on 1fcc51f/49d9a72 stands (docs/runs/2026-09-25.md, 2026-09-26.md, 2026-10-02.md); published 2026-10-02 at 49d9a726f64e5d491fb7e1b77fd438c81eb97522
workshop:     3806709627
version:      1.0.1 (tag v1.0.1 and GitHub release by CI run 38169426918; 1.0.0 was tag v1.0.0, manifest 6682224070142369171)
target_version: 1.1.0 (minor bump, 2026-10-13: RimWorld 1.7 pass; `<li>1.7</li>` declared, untested)
maintainer:   Claude Code, the session named in session, which holds this standalone repository
session:      local_cdb49a53-4709-450a-a794-ed6ec0aff3ec
updated:      2026-10-08, gallery: the second series (seven images) played, read and in Art/Gallery/; the six images of the first series were uploaded to Steam by the owner on 2026-10-06 (her word); the rest as of 2026-10-02 (history in docs/runs/status-history.md)
remaining:
  - 1.1.0 (owner, 2026-10-13): RimWorld 1.7 pass, a variant of `playTests` (AUDIT.md, "Passe 1.7"), recorded as `tested_1_7`. Chain reopened at `code[1.1.0]`: `Mod/` is XML only (no DLL, no Harmony), so the 1.6 build stands; next `declareDependencies`, `settings`, `localize`, `writeTests`, then the 1.7 diagnostic run (English only, `tested_1_7: yes` or `no`). `<li>1.7</li>` added to `supportedVersions` and the Preview regenerated with badge 1.7 (also `0-preview.png`, `Preview.ico`) on the owner's word of 2026-10-13, BEFORE any 1.7 run (AUDIT.md says after a green run): `tested_1_7` stays absent, nothing may be published until the 1.7 diagnostic is `yes`; on `no`, revert both. Prerequisites owed by others: Pickle#63, NPT steps and SB valid on 1.7.
  - update 1.0.1 (owner, 2026-10-08): `Mod/` changed since 49d9a72: two English texts (`bipedal animal`, the Teshi description), the Preview redrawn in `e8b3a89` (666467 bytes, published one 666772, sent with `update_preview`; `Art/Gallery/0-preview.png` must stay identical) and the regenerated ModIcon. In order: `declareDependencies`, `auditSettings`, `localize` (Virginie rereads the two EN texts), `writeTests` (fix 06 lines 18 and 23, replay 06 and 07), `playTests`, gallery second series on the page with credits, release notes, dry-run, publish.
  - unverified: the Nocturnal pass and the new-colony scenario were not replayed after the publish: the 2026-09-26 runs on `1fcc51f` stand, and nothing under `Mod/` besides the Preview changed since the publish.
  - unverified: the six gallery images were uploaded to Steam by Virginie on 2026-10-06 (her word, run 95fc, `Art/Gallery/`); no session has read the page.
  - unverified: the Steam page was checked by Virginie ("C'est bon", 2026-10-02, relayed) and the CI log shows preview 666772 bytes and description 5252 characters sent; no session has read the page (Steam answers 429 to the CI).
  - unverified: the thanks to Shooki and Mlie on Creatures of Ki (Continued), 2726461020, were posted by Virginie (her word, 2026-10-02); no session read the comment. The register row and the `Covers` of ADS2 and Nocturnal Animals are committed in the protocols repository (`91f4a85`).
social_preview_sha256: 923e1a38ebeb2acf492fb468d25664aa6cdae1ebcb71b18388cf080ff2910293
publication_changelog_review_sha: a2c52b52be360a4e8661edc89ca0d59c0343e89c
echo_review_sha: 7f70ed5fdce84a93b64f9c789deab0ea226da250
code_review_sha: 7f70ed5fdce84a93b64f9c789deab0ea226da250
protocols_read_sha: c4aea5fbde7151683d9e3ece368142ed2d63f050
---

# Creatures of Ki - Teshi Renew — status

## Audit, 2026-10-10 (HEAD `e6e9b50`, working tree clean before this edit)

`preTest` (old vocabulary, replaced on 2026-10-10) to `code[1.0.1]`. Read: AUDIT.md (284 lines), WELCOME.md, STATUS.md,
BACKLOG.md, CHANGELOG.md. Nothing run, no game started. `Check-Status.ps1` before: 0 ERROR, 3 WARN (retired `stage`, old
vocabulary, `protocols_read_sha` missing); `stage` removed and `protocols_read_sha` written here.
Why `code` at first: 3.c unmet (no `[Unreleased]` in CHANGELOG.md); written the same day, 3.a to 3.c now met (no build, no DLL).
(two English texts, Preview, ModIcon). Next, in order: that section, then `declareDependencies[1.0.1]` (re-verified, dated),
`auditSettings` (`not_applicable` stands), `localize` (EN texts changed: Virginie rereads them before deployment),
`writeTests[1.0.1]` (06 assertions, replay 06 and 07).

**Audit completed, 2026-10-11 (HEAD `4df312a`, read and offline checks only, no game).** Rerun after the owner asked whether the audit covered every step up to `playTests`.
Checked: repository, remote, licence fields, `upstream_mod_remotes`, `Art/` (sources present, `ModIcon.png` 128 x 128 newer than its source, `Preview.png` 896 x 504,
no `PROMPT_*.md` left), `Check-DefInjected.ps1` (31 keys, 0 error), `Run-Functional-Tests.ps1` (23, 0 failed), Pickle suites and the passes declared in `TESTING.md`.
Defect found and fixed: `TESTING.md` did not declare the second gallery series nor the scenario count (35 `Scenario:` lines, twelve features). Stage unchanged.
Reserves, not blockers: `Art/ModIcon.ico` and `Art/Preview.ico` are tracked by git (local folder-icon convention, `AUDIT.md`: kept out of published content, `Mod/` has none);
The former gap in the gallery indexes (no `6-`) is closed: indexes 0 to 6 are contiguous since 2026-10-11.

**Gallery, second series, 2026-10-11 (HEAD `e358d09`).** The six images after `0-preview` opened one by one by the session, director's verdict before the owner's: `1-asleep` kept (the teshi
curled on a bed, readable, murky pond), `2-portrait` kept (the strongest, close and clear), `3-the-parents` kept (hearts, lantern, daylilies), `4-the-nesting-box` kept (warm, the egg in its box),
`5-the-hatching` redone 2026-10-11 (ticket e848, root size 1.9: the kit now fills its box tile and reads as a kit beside the mother; the first version was too far), `6-the-infirmary-health-tab` kept (the Health tab names the cut claw and the ADS2 bionic
arm, which shows the 1.0.1 texts; the interface is busy, left as the game draws it). files renamed on 2026-10-11 as candidates in page order, the most demonstrative first (AUDIT 9.c): `1-candidate-portrait`, `2-candidate-the-parents`, `3-candidate-the-nesting-box`, `4-candidate-the-hatching`, `5-candidate-asleep`, `6-candidate-the-infirmary-health-tab` (indexes 0 to 6 contiguous, AUDIT 9.b), accepted by the owner on 2026-10-11 (`candidate` dropped); the meat scene of 18h30 was played and not kept.
Sizes 254 to 450 KB each, 2.3 MB together; `0-preview.png` identical to `Mod/About/Preview.png` (cmp). Order to argue: the most demonstrative first after the preview.

**Docs, 2026-10-11 (`writeDocs[1.0.1]`, 11.a to 11.i).** The description (`PUBLICATION.md`, `## Steam description`, 6796 characters, limit 8000 bytes) now thanks the mods the gallery was staged with
(props More animal beds and Stick Lantern (Continued) with Dalrae and Mlie; the colonist's body, apparel and facial-animation mods, AB's Visible Pants, EyeGenes3, my Venus Touch Waistlines), none a
dependency, links on every name; `About.xml` regenerated (`--check` clean). Authors of the three new recipients (More animal beds, Stick Lantern, AB's Visible Pants) were read in their local
`About.xml`, the Workshop pages answered 429: to confirm on the page before posting. Register `WORKSHOP_COMMENTS.md` (protocols repository, uncommitted by me): 10 rows get this mod in `Covers`,
3 rows `drafted` plus the original Stick Lantern `not_applicable`; drafts in `PUBLICATION.md`, "Thanks". Content boxes: Preview and the six images opened 2026-10-11, no adult content. Release note
`### 1.0.1` and `CHANGELOG.md` `[Unreleased]` written. **Open: 11.j, the owner's reread of `PUBLICATION.md` and `CHANGELOG.md`** (description changed several times today; field `publication_changelog_review_sha`
written only on her word in the chat).

**Published 1.0.1, 2026-10-11.** [Publish run 38169426918](https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Renew/actions/runs/38169426918), approved by Virginie, on
`5d389b1c19c7220f9ee690d0f4f0e14acd9874aa` (the dry-run SHA), options `update_preview` and `update_description`: publish and tag-and-release green. Verified on the page through the Steam API
(`GetPublishedFileDetails`, no 429): updated 2026-10-11 19:49 UTC, public (visibility 0), tags `Mod` and `1.6` (unchanged, not sent), description 7180 characters (was 5252), preview 666467 bytes,
sha256 `923e1a38…` identical to `Mod/About/Preview.png` (was 666772, `0abbe24f…`). Tag `v1.0.1` and the GitHub release exist, `v1.0.1` points at the same SHA. Previous good target: `v1.0.0`.
Open: the six images of `Art/Gallery/` are the owner's manual upload to Steam (the Steam API cannot send a gallery); the owner uploaded the six images and posted the three thanks on 2026-10-11 (her word, not read on the page); non-regression
(`followUp`, 14.a): the suite is to replay on the published build, in small tickets, none filed yet.

**Dry-run 1.0.1, 2026-10-11.** [38168866088](https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Renew/actions/runs/38168866088), green, on `5d389b1c19c7220f9ee690d0f4f0e14acd9874aa` (CHANGELOG `## [1.0.1] — 2026-10-11`), version 1.0.1, options `update_preview=true update_description=true`
(title and tags off). Staged 24 files, 1.03 MB, no assembly. Preview to send 666467 bytes (sha256 `923e1a38…`) against 666772 on the page; description 7180 characters (limit 8000 bytes), converted
from `PUBLICATION.md`; change note: the two English texts and the redrawn Preview and icon. `.github` regenerated at template `ba64b0c1b25d` (commit `9b2f71a`, 75 script tests green locally).
Rollback target: `v1.0.0` on `49d9a726f64e5d491fb7e1b77fd438c81eb97522`. The SHA to publish is the dry-run SHA; this record is a later docs-only commit (convention (c)). Not sent: the second gallery
series stays the owner's manual upload to Steam; the three drafted thanks (More animal beds, Stick Lantern, AB's Visible Pants) go after the images are on the page.

**Owner's reread, 2026-10-11 (11.j).** Virginie reread `PUBLICATION.md` and `CHANGELOG.md` in the chat ("validé", several rounds of corrections applied, last on `a2c52b5`). `publication_changelog_review_sha` = `a2c52b5`. The `x.y` line is 1.0; a change of the Steam description reopens it.

**Echo and Preview, 2026-10-11 (10.a, 10.d).** Decision: keep `Art/echo.png`, reason: the echo is a conceptual teshi outline (front view, four banded ears), and the accepted gallery shows that same animal close up (`1-portrait`), so it already says what the gallery says. `echo_review_sha` = `d4cd79a` (gallery accepted). Preview 896 x 504, 666467 bytes (under 1 MB), identical to `Art/Gallery/0-preview.png` (cmp), badge 1.6 = the highest `supportedVersions` of `About.xml`, title and rule readable. Reserve, not a blocker: at 4x zoom the claw lines of the echo touch the last letter of "and" in the copy line (the Preview was accepted by the owner, a taste question, not reopened). 10.f done 2026-10-11 with the owner's go: `Mod/About/Preview.png` uploaded through Claude in Chrome (Settings, General, Social preview); `og:image` of the repository page now points to repository-images.githubusercontent.com; `social_preview_sha256` written.

**Gallery table, 2026-10-11, accepted by the owner (her word, the six files, `candidate` dropped).** Page order, the most demonstrative first (AUDIT 9.c).

| # | File | Game time | Shows |
|---|---|---|---|
| 0 | `0-preview.png` | | the Preview (identical to `Mod/About/Preview.png`) |
| 1 | `1-portrait.jpg` | 16h30 | the awake teshi, close portrait |
| 2 | `2-the-parents.jpg` | 17h00 | the parents nose to nose, hearts |
| 3 | `3-the-nesting-box.jpg` | 17h30 | the mother at her nest, the egg in its box |
| 4 | `4-the-hatching.jpg` | 18h00 | the kit hatched beside its mother (redone, ticket e848) |
| 5 | `5-asleep.jpg` | 16h00 | the teshi asleep on a bed |
| 6 | `6-the-infirmary-health-tab.jpg` | 19h30 | the Health tab: cut claw and ADS2 bionic arm |

**Pickle runs of `playTests[1.0.1]`, 2026-10-11 (label `04c2119`).** English and French labels, descriptions and information cards green; the health tab of each language green on the second
try (the first two tickets forgot the `-DepMap`, ticket error, no defect of the mod). Lines in `docs/runs/2026-10-11.md`. Played: 06 and 07 only. Not replayed on this revision:
01 to 05, 08 to 10 (the 2026-09-26 and 2026-10-02 runs stand, nothing under `Mod/` but two texts and the images changed since `49d9a72`; non-regression comes after the commit, AUDIT 14.a).

**Code review, 2026-10-11 (8.m), `code_review_sha` bfd5a4567e4f032eed65215c74265f35feaddb69.** Reading of the `Mod/` diff since `c342ee91ca41574d075e9b480817714cb7901163` (previous review), binaries excluded: the label `bipedal animal`, the Teshi description, the `desiccated` spelling and the AI-generated sentence in `About.xml` (generated from `PUBLICATION.md`). No code, no Def logic, no patch. No finding. Nothing run for the review itself.

**Code review, 2026-10-11 (second reading, 12.a).** `Mod/` diff since `bfd5a45`: `About.xml` only, three paragraphs of generated description text (the staged-mods thanks), no code, no Def, no patch. No finding. `code_review_sha` moved to the commit that carries this line's parent (`7b5096b`).

**Translation audit, 2026-10-10 (revision `34d2dd0`).** Texts changed in 1.0.1: the `bipedal animal` label (`Bodies_Animal_Teshi.xml`) and the
Teshi description (`Races_Animal_Teshi.xml`); the French (`animal bipède`, the description) did not change. `FRENCH_REVIEW.md` regenerated by
`Make-FrenchReview.ps1` (the 18 anatomical `customLabel` rows take their English from `french-review-english.json`, checked against the Def).
Reread by Virginie, French and English, in the chat of 2026-10-10: French good, no gender agreement needed, the two English texts good,
no correction left. `localization`, `translation_en` and `translation_fr` stay `complete`. Nothing in-game was read (raw keys, truncation):

**Tests written and rerun, 2026-10-10 (HEAD `aa6070c`, offline, no game).** `Run-Functional-Tests.ps1`: 23 tests, 0 failed, rerun today. XML and
Core references are covered by that suite (TESTING.md). The two assertions the audit flagged in `06-labels-en.feature` (lines 18 and 23) were already
rewritten in `adbcd70` (the `remaining` defect was stale and is removed); `07-labels-fr.feature` reads the unchanged French. Pickle suites written
(01 to 12, `@requires` passes in `TESTING.md`), none played on this revision yet. Tested sha: the one the tickets of `playTests[1.0.1]` carry in their label.
`unverified` until `playTests`.

**Dependencies, 2026-10-10 (HEAD `e6e9b50`, read in the sources, no game).** No hard dependency (`modDependencies` absent, correct).
`loadAfter`: Core and the five DLC (`Ludeon.RimWorld*`); `loadBefore`: `SamBucher.ADogSaidAnimalProsthetics2` (patches `ADS2_Categories.xml`,
`ADS2_Arms.xml`, same classes as vanilla recipes, no mod-specific operation). Nocturnal Animals: `NocturnalAnimals.xml` under
`PatchOperationFindMod` on the mod `<name>` (two entries), nothing patched or logged without it. No `LoadFolders.xml` (one version, 1.6 only,
`supportedVersions` 1.6). No cycle. Animal mod integrations (ANIMALS.md 4.f): ADS2 and Nocturnal done, Dogs mate and Better Crossbreeding not
done: crossbreeding parked by the owner (2026-09-25), Dogs mate (`Mlie.DogsMate`): not applicable, the teshi is an egg-layer with no canid group (`ANIMALS.md` asks for a written decision, this is it, a reading of the sources not a test).

**Settings audit, 2026-10-10 (HEAD `a227b39`, sources read, no game).** `settings_audit: not_applicable` stands. `Mod/` holds no assembly and no C#
(`Mod/Assemblies` and `Source/` absent), no `ModSettings`, no `MainButtonDef`, no `SettingsCategory` (search over `Mod/`: no hit). The hits under
`Tests/Pickle/` are the test steps (`TeshiSteps.cs`) and the configs of other mods staged by the passes, not shipped. Nothing to configure: the mod
adds one animal, its eggs and two optional patches. No empty page, no shortcut. The two English texts changed in 1.0.1 add no setting.

## Earlier state

The state of 2026-10-02 (non-regression, publication 1.0.0, gates, integrations, icon and Preview) moved to `docs/runs/status-history.md` on 2026-10-13 (size, `Check-Status.ps1`).

## Identity and title

The mod name is `Creatures of Ki - Teshi Renew`; its packageId is `nelim.creaturesofki` (renamed from
`nelim.creaturesofkirenew` on 2026-09-28, before anything public carried it). The suffix `Teshi Renew` already distinguishes
this animal-only continuation from the original Creatures of Ki. RimWorld 1.6 is declared in About.xml. Both the About URL
and the description contain the GitHub repository link.

## License and justification

**MIT**, classified `open`. The repository's LICENSE records copyright 2020 Mlie and the upstream source
https://github.com/emipa606/CreaturesOfKi. This continuation inherits the teshi assets and definitions from Shooki and Mlie;
it is not wholly original work. The local license offers Nelim's extraction and 1.6 port under the same MIT terms.
ATTRIBUTION.md records provenance and changes. LICENSE and Mod/LICENSE are byte-identical (SHA-256 checked on 2026-09-12).

GitHub labels our LICENSE `Other` / `NOASSERTION` rather than MIT, probably because of the provenance appendix (not a verified
diagnosis); the declared license stays MIT and `licence_spdx` records the declared terms. The upstream
`emipa606/CreaturesOfKi` LICENSE.md contains the MIT text, copyright 2020 Mlie (checked 2026-09-12). The upstream Steam page
(2726461020) announces no further support and shows no explicit MIT grant or prohibition; the reason for stopping is
unspecified and original asset permissions are only partly traced (the linked original item 1726422863 returned an error).
`visibility: public` describes repository access; `licence: open` rests on the published upstream MIT grant and the local
port's explicit MIT statement, not on public access alone.

**Warnings closed, 2026-10-13.** Code review (third reading): `Mod/` diff since `7b5096b` = `Preview.png` (binary, badge crop) and the `About.xml` description (generated, version numbers removed per the 2026-10-13 rule); no code, no Def, no patch; no finding; `code_review_sha` = `7f70ed5`. Echo: `echo-source.png` kept (unchanged, only the Preview badge crop moved, the 0- copy follows); `echo_review_sha` = `7f70ed5`. Description: "1.6" removed from `PUBLICATION.md` (five places) and `About.xml` regenerated; this reopens 11.j. Use This Instead: row added (`drafted`, protocols repository), draft in `PUBLICATION.md`, not posted. `STATUS.md` trimmed (2026-10-02 state moved to `docs/runs/status-history.md`).
**Open (owner): 11.j.** Virginie rereads `PUBLICATION.md` and `CHANGELOG.md` (the description changed: version numbers only); `publication_changelog_review_sha` is stale until her word. Then she posts the Use This Instead comment.
