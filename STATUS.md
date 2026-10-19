---
localization: complete
translation_en: complete
translation_fr: complete
settings_audit: not_applicable
workflow_stage: shootGallery[1.1.1]
tested_1_7:   yes  # 2026-10-13, ticket e8c8, feature 01-loads only (1 passed, 0 failed), RimWorld 1.7.4976 rev1043, English, map sans-facultatifs, on 971ac7c; <li>1.7</li> declared on the owner's word 2026-10-13
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
version:      1.1.0 (tag v1.1.0 and GitHub release by CI run 38475087868; 1.0.1 was tag v1.0.1)
target_version: 1.1.0 (minor bump, 2026-10-13: RimWorld 1.7 pass; `<li>1.7</li>` declared, tested on load only: 01-loads, English, 1.7.4976)
maintainer:   Claude Code, the session named in session, which holds this standalone repository
session:      local_3b2dce0c-52e6-49cb-a662-cefbbbd56580
updated:      2026-10-18, gallery reopened by owner (shootGallery[1.1.1], starts with shotlist); before: 1.1.0 published, non-regression green, Use This Instead posted, cleanup done (history in docs/runs/status-history.md)
remaining:
  - ticket f5d5 DONE green, image 6 judged 4 (Shotlist table); next: other six scenarios, one ticket each. Was: (image 6, `-EvidenceDir Tests/Pickle/Inbox/gallery-v3-6b`, tree on c4756e1+, lis without pot after run 551e failed "cell already holds PlantPot"). At RUN_DONE: read `summary.json` `total` first (queue showed tests=36 for a 1-scenario filter: if 36, filter did not hold, refile narrower), open the screenshot, judge it against 4, put verdict in the Shotlist table; then write the other six scenarios in 13-workshop-captures-v3.feature one ticket each, results into Inbox/, minify green proofs to Evidence/ with RELEASE.md.
  - evidence: migrated through Inbox 2026-10-19, Evidence/ holds 6 folders 1.2 MB each with RELEASE.md; no dated pickle-reports-archive folder is this mod's; Parked/ none.
  - shootGallery[1.1.1]: shotlist written and scored 4/5 (13-workshop-captures-v3.feature header, table in "Shotlist" below); next: write scenarios from it, one ticket for image 6 first, then the rest, then read each capture against its line.
  - 1.1.0 published (Steam 2026-10-13 22:07 UTC, tag v1.1.0, tags Mod 1.6 1.7). `tested_1_7: yes` = load only, English (ticket e8c8); not played on 1.7: laying, hatching, ADS2, Nocturnal, galleries, French.
  - for dormant: 14.c WSL Workshop mods downloaded by this mod's sessions (list first, owner approves), then `Check-Status.ps1` (crashes on `Get-FileHash`, shared script, for the Audit workflow session).
  - disclosed gaps against AUDIT.md (loop-declared stages, dispatch before lint, 1.7 declared before a green run, no `TEST_SCENARIOS.md`): in docs/runs/status-history.md, "AUDIT.md read in full, 2026-10-15".
  - unverified: gallery images on the Steam page and the thanks comment were posted by the owner (her word); no session read the page.
social_preview_sha256: 4215d8aea8baefad192e4e9e984310acdd32fbc195035a2a12f6603f1ed33602
publication_changelog_review_sha: 188150b48a60f21c6c5dfeeed31b9e8f6cf3bb65
echo_review_sha: 5dc5a7dd3b39251cc90cb6cad6cc281fef94c2df
code_review_sha: 188150b48a60f21c6c5dfeeed31b9e8f6cf3bb65
protocols_read_sha: 4d49329d01ba3794ace97b7e353ee49809bf695d
---
# Creatures of Ki - Teshi Renew — status

## Dated sections (folded)

Full text in `docs/runs/status-history.md`, section "Folded from STATUS.md, 2026-10-15". One line each:

- Audit, 2026-10-10 (HEAD `e6e9b50`, working tree clean before this edit)
- Audit completed, 2026-10-11 (HEAD `4df312a`, read and offline checks only, no game)
- Gallery, second series, 2026-10-11 (HEAD `e358d09`)
- Docs, 2026-10-11 (`writeDocs[1.0.1]`, 11.a to 11.i)
- Published 1.0.1, 2026-10-11
- Dry-run 1.0.1, 2026-10-11
- Owner's reread, 2026-10-11 (11.j)
- Echo and Preview, 2026-10-11 (10.a, 10.d)
- Gallery table, 2026-10-11, accepted by the owner (her word, the six files, `candidate` dropped)
- Pickle runs of `playTests[1.0.1]`, 2026-10-11 (label `04c2119`)
- Code review, 2026-10-11 (8.m), `code_review_sha` bfd5a4567e4f032eed65215c74265f35feaddb69
- Code review, 2026-10-11 (second reading, 12.a)
- Translation audit, 2026-10-10 (revision `34d2dd0`)
- Tests written and rerun, 2026-10-10 (HEAD `aa6070c`, offline, no game)
- Dependencies, 2026-10-10 (HEAD `e6e9b50`, read in the sources, no game)
- Settings audit, 2026-10-10 (HEAD `a227b39`, sources read, no game)
- Warnings closed, 2026-10-13
- Chain 1.1.0, 2026-10-13 (`code` to `playTests`, offline, no game; HEAD before this edit `d2604fe`)
- 1.7 diagnostic filed, 2026-10-13
- 1.7 diagnostic result, 2026-10-13
- Social preview, 2026-10-13 (10.f, owner's go)
- Chain 1.1.0 continued, 2026-10-13
- Owner's reread, 2026-10-13 (11.j, 1.1.0)
- Echo, 2026-10-14 (second reading)
- Dry-run 1.1.0, 2026-10-14
- Publish 1.1.0 launched, 2026-10-14
- Review shas, 2026-10-14
- Published 1.1.0, 2026-10-14
- Tag 1.7, 2026-10-14
- Tag 1.7 applied, 2026-10-14
- Non-regression filed, 2026-10-14 (`followUp`, 14.a)
- Non-regression result, 2026-10-15
- AUDIT.md read in full, 2026-10-15
- Non-regression 1.1.0 complete, 2026-10-15
- Use This Instead posted, 2026-10-15

## Shotlist, 2026-10-18 (gallery reopened, `shootGallery[1.1.1]`, AUDIT 9.0, revised after Audit's reading)

Full lines in the header of `Tests/Pickle/Mod/Pickle/Features/13-workshop-captures-v3.feature`. Nothing played. Series score **4 of 5**, every scene 4 or 5 (criteria a to k of `GALLERY.md`). Weather Clear set and written in every scene; Nelim has one hairstyle (`Bob`, dark brown) and a different outfit and face in each of her six scenes. Carried item of image 4: `Hay`, vanilla Core, found in `Items_Resource_RawPlant.xml`. Published gallery unchanged; new images stay candidates until the owner agrees.

| # | Place, time | Subject | Nelim (outfit, face) | Est. | Risk and plan | Verdict after run |
|---|---|---|---|---|---|---|
| 1 | water-garden 16h00 | mother asleep on a large bed, Nelim watches | cream shirt, brown trousers, neutral | 4 | face and pose beside the bed: run alone first, redo the pose | |
| 2 | water-garden 16h30 | awake, close front portrait | not in frame | 5 | none, camera moves east of the hole | |
| 3 | water-garden 17h00 | parents nose to nose, lantern, daylilies | sage-green collar shirt, dark brown trousers, own smirk | 4 | crowding: Nelim at the edge, root 3.0 if it crowds | |
| 4 | calm-zone 17h30 | mother on bed in yellow grass, egg in box, Nelim brings hay | rust shirt, tan jacket, soft smile | 4 | lantern overlap, small hay: Nelim at (210, 185), fallback Meat_Chicken | |
| 5 | calm-zone 18h00 | hatching, kit beside mother, root 2.3 | teal collar shirt, cream tuque, brows up and smile | 4 | kit small on yellow: daylilies behind, root 2.0 without Nelim | |
| 6 | calm-zone 18h30 | Nelim feeds the kit by hand | mustard shirt, brown trousers, smile | 4 | earlier capture dropped, reason lost: play alone first | 4, run f5d5 green 1/1: kit and mother read, daylilies without pot, lantern, Nelim carries the meal; face reads blush more than smile; proof `Evidence/gallery-v3-6b` |
| 7 | hut 19h30 | Health tab, cut claw and bionic arm | white shirt, normal face (published) | 5 | none, published image stands | |

Read against the second series: Nelim in none of the five story images, burrow hole at (149, 173) in images 1, 2, 5, kit small in the hatching.
## Earlier state

State of 2026-10-02 (non-regression, publication 1.0.0, gates, integrations, icon, Preview) moved to `docs/runs/status-history.md` on 2026-10-13 (size, `Check-Status.ps1`).

## Identity and title

Mod name `Creatures of Ki - Teshi Renew`; packageId `nelim.creaturesofki` (renamed from
`nelim.creaturesofkirenew` 2026-09-28, before anything public carried it). Suffix `Teshi Renew` already distinguishes
this animal-only continuation from original Creatures of Ki. RimWorld 1.6 declared in About.xml. About URL
and description both contain GitHub repository link.

## License and justification

**MIT**, classified `open`. Repo LICENSE records copyright 2020 Mlie and upstream source
https://github.com/emipa606/CreaturesOfKi. Continuation inherits teshi assets and definitions from Shooki and Mlie;
not wholly original work. Local license offers Nelim's extraction and 1.6 port under same MIT terms.
ATTRIBUTION.md records provenance and changes. LICENSE and Mod/LICENSE byte-identical (SHA-256 checked 2026-09-12).

GitHub labels our LICENSE `Other` / `NOASSERTION`, not MIT, probably due to provenance appendix (not verified
diagnosis); declared license stays MIT, `licence_spdx` records declared terms. Upstream
`emipa606/CreaturesOfKi` LICENSE.md contains MIT text, copyright 2020 Mlie (checked 2026-09-12). Upstream Steam page
(2726461020) announces no further support, shows no explicit MIT grant or prohibition; reason for stopping
unspecified, original asset permissions only partly traced (linked original item 1726422863 returned error).
`visibility: public` describes repo access; `licence: open` rests on published upstream MIT grant and local
port's explicit MIT statement, not public access alone.


**WSL cleanup, 2026-10-15 (14.c).** Nothing removed: two optional Workshop mods this mod's passes fetched, 3238353862 (ADS2) and 2269731409 (Nocturnal Animals), still named by `wsl-deps` of other mods (at least 10 and 9; ACertainSeries, AlphaMythology, ASlothMod, DustBunnies, Ebbbs, Dalmatians and others), so stay. Ticket Manager asked for slot, no answer; machine lock free and queue empty at check, nothing deleted. Protocols re-read: AUDIT.md 14.c (cleanup message gives owner Workshop links to unsubscribe), USE_THIS_INSTEAD.md (this mod's row `posted`). Check-Status.ps1 run under pwsh: 0 error, 0 warning.

**Gallery subtitles, 2026-10-15 (owner's request).** English movie-style subtitles (white text, black outline, centred at bottom) drawn into `Art/Gallery/1-portrait.jpg` to `5-asleep.jpg`; `0-preview.png` and `6-the-infirmary-health-tab.jpg` (interface) untouched. Originals in git history before this commit. Owner uploads six images to Steam by hand; not read on page.

**Echo reading, 2026-10-15.** `Art/Gallery/` changed since `df1a839` only by subtitles; six captioned images each opened and read (text legible, no animal or interface element hidden except small `Nelim` label on image 6). `echo_review_sha` moved to `5dc5a7dd3b39251cc90cb6cad6cc281fef94c2df`.

**Review by ChatGPT (Codex) and owner's validation, 2026-10-15.** Taken: `PUBLICATION.md` "Dependencies and DLC" said `supportedVersions` 1.6 only, now 1.6 and 1.7 (`1212abc` + next commit). Not changed: `FRENCH_REVIEW.md` says no source language recorded and Original column repeats English: true, generated file, renew whose source is English; its `?` column stays empty, owner's reading of French is hers (2026-10-10 in chat, no French text changed in 1.1.0). Optional style point on `EggTeshiUnfertilized.description` ("bien meilleur" vs English "much, much better"): not applied, changes `Mod/`. Owner validated variant "bien, bien meilleur" (put in BACKLOG.md for next version, not applied now) and word `kit` in gallery subtitle ("The kit hatches beside its mother.", her word, 2026-10-15).