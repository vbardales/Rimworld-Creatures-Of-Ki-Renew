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
  - 2026-10-27 queue: 2006 (image 4), 77ef (5), 87ac (6), 7271 (image 1 refile), bd81 (image 2 refile, fix 8f6b631: Nelim at (157, 166), cell guessed standable). Image 3 (2bff) green 3.5, folder `Inbox/gallery-v4-3-the-parents` kept until the batch is read (then minify the keepers to Evidence/ with RELEASE.md, delete the rest). At each RUN_DONE: summary.json, screenshot against its header line, verdict in "Verdict after run" below. Cells of images 4 to 6 not checked against the map: a "not standable" red is fixed by picking a neighbour shallow or bank cell and refiling that image alone.
  - 2026-10-26 ticket 9bb8 (image 1) lost: exit 98, machine slept during the run, no report (infrastructure). Refiled as 7271 (`-DepMap wsl-deps.sanctuary.map`, evidence `Tests/Pickle/Inbox/gallery-v4-1b-the-watch`, same filter). Old v3 Inbox folders deleted (verdicts already in Shotlist). 8734, 2bff, 2006, 77ef, 87ac still queued.
  - 2026-10-25 tickets filed on 67cccae (wsl-deps.sanctuary.map, -NoBatch, one scenario each, filter `13-workshop-captures-v3::<hour>`, evidence into `Tests/Pickle/Inbox/gallery-v4-<n>-<name>`): 9bb8 (image 1, 16h00), 8734 (2, 16h30), 2bff (3, 17h00), 2006 (4, 17h30), 77ef (5, 18h00), 87ac (6, 18h30). Keep Mod/, Source/ and Tests/ on 67cccae until the six RUN_DONE. At each RUN_DONE: read summary.json `total` (expect 1) and `exitReason`, open the screenshot against its header line, put the verdict in the Shotlist table; new NPT steps (forced walk of an animal, newborn kit, haul, advance) are compiled, not played: a red may be theirs, tell NPT; image 3 and 4 advance counts (30, 45) are guesses.
  - 2026-10-25 NPT answered via TM (ticket 531b): forced haul/walk + `I advance the paused game by exactly N ticks` PROVEN (about 1 cell per 20 ticks, drawn at new spot in pause, fix 6c8ba9d); fixed-sex spawns green (5be6); `the newborn animal of kind X is named Y` NOT played (image 5 risk until 87ac). New GALLERY.md rule (2026-10-25): clothes and expressions are suggestions; colonists other than NSB's need owner authorization before playing (check Nelim is an NSB colonist). Marker deleted, TM told REGISTER.
  - 2026-10-25 open after the tickets (do not edit the .feature before the six RUN_DONE): (a) tell NPT (`🟢 NPT pickletools/playTests`, id local_5c111699-82e6-4951-9bb6-f656cfbc270f) the outcome of its steps: forced walk of an animal (image 2), haul with Hay (3, 4), newborn kit step and whether the hatcher already names the kit (5), advance N ticks; NPT also reads its own ticket 1071 and tells me; if a step is refused or fails, the owner arbitrates (via the TM if NPT is unreachable); (b) stale header lines in the .feature: line 94 says the mother steps off the bed through `follows` (now `forced to walk`), line 62 says "steps played in series 2" for image 4 (the haul is new): fix after the runs; (c) `Check-Status`: `social_preview_sha256` stale after the new Preview (owner uploads `Mod/About/Preview.png` as the GitHub social preview, then the sha256 is recorded), `echo_review_sha` stale since `Art/Gallery/0-preview.png` changed (echo to re-read); (d) the rate-gallery of the plan gave a mean of 4.75 (images 1, 5, 6 at 4.5), written by the author so read as an upper bound.
  - 2026-10-25 resume: Inbox read. Image 3 green 3.5, 4 green 3, 5 green 2 (verdicts in the Shotlist table); image 1 ticket produced no report twice (launcher exit -1073741205, `no-report.txt` in Inbox/gallery-v3-1-the-watch and -1); image 2 has no Inbox folder. Shotlist reworked the same day for the GALLERY.md rules of 2026-10-23/25 (one outfit, instant and method per gesture, wide/medium/tight, smile); all six images are to be replayed from the new scenarios.
  - 2026-10-20: scenarios of images 1 to 5 written (commit 801b5c5, 13-workshop-captures-v3.feature, filters `13-workshop-captures-v3::<title start>`), tickets filed on wsl-deps.sanctuary.map: fac0 (image 1), 6f53 (2), c000 (3), 2fcb (4), 128a (5), evidence into `Tests/Pickle/Inbox/gallery-v3-<n>-<name>`; image 7 stays the published image. At each RUN_DONE: read summary.json `total` (expect 1, or more if the launch was merged), open the screenshot against its line, put the verdict in the Shotlist table, minify green to Evidence/ with RELEASE.md. Merged launches: the report holds the other scenarios too, trim it.
  - ticket f5d5 DONE green, image 6 judged 4 (Shotlist table). Was: (image 6, `-EvidenceDir Tests/Pickle/Inbox/gallery-v3-6b`, tree on c4756e1+, lis without pot after run 551e failed "cell already holds PlantPot"). At RUN_DONE: read `summary.json` `total` first (queue showed tests=36 for a 1-scenario filter: if 36, filter did not hold, refile narrower), open the screenshot, judge it against 4, put verdict in the Shotlist table; then write the other six scenarios in 13-workshop-captures-v3.feature one ticket each, results into Inbox/, minify green proofs to Evidence/ with RELEASE.md.
  - evidence: migrated again through Inbox 2026-10-20, Prune-Evidence -Apply; Evidence/ holds 7 minified green folders, 1.4 MB total, each with RELEASE.md; Inbox/ empty; Parked/ none; none of the 9 pickle-reports-archive folders is this mod's (checked junit/Player.log); no report folder in Tests/ or docs/runs/ (lines only).
  - shootGallery[1.1.1]: shotlist reworked 2026-10-25 and scored 4/5 (13-workshop-captures-v3.feature header, tables in "Shotlist" below; Opus director pass done; rate-gallery of the old plan gave 3.3). Scenarios of images 1 to 6 rewritten from the header (2026-10-25, `Check-Steps.ps1`: every step line resolves, uncommitted). Next: file one ticket each on wsl-deps.sanctuary.map (filters `13-workshop-captures-v3::<title start>`: `16h00,`, `16h30,`, `17h00,`, `17h30,`, `18h00,`, `18h30,`), then read each capture against its line.
  - 1.1.0 published (Steam 2026-10-13 22:07 UTC, tag v1.1.0, tags Mod 1.6 1.7). `tested_1_7: yes` = load only, English (ticket e8c8); not played on 1.7: laying, hatching, ADS2, Nocturnal, galleries, French.
  - for dormant: 14.c WSL Workshop mods downloaded by this mod's sessions (list first, owner approves), then `Check-Status.ps1` (crashes on `Get-FileHash`, shared script, for the Audit workflow session).
  - disclosed gaps against AUDIT.md (loop-declared stages, dispatch before lint, 1.7 declared before a green run, no `TEST_SCENARIOS.md`): in docs/runs/status-history.md, "AUDIT.md read in full, 2026-10-15".
  - unverified: gallery images on the Steam page and the thanks comment were posted by the owner (her word); no session read the page.
social_preview_sha256: 4215d8aea8baefad192e4e9e984310acdd32fbc195035a2a12f6603f1ed33602
publication_changelog_review_sha: 188150b48a60f21c6c5dfeeed31b9e8f6cf3bb65
echo_review_sha: 5dc5a7dd3b39251cc90cb6cad6cc281fef94c2df
code_review_sha: 188150b48a60f21c6c5dfeeed31b9e8f6cf3bb65
protocols_read_sha: 43dd90d4b7873c500347fba1be01275a48d5795b
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

## Shotlist, 2026-10-25 (gallery reopened, `shootGallery[1.1.1]`, AUDIT 9.0, reworked against GALLERY.md of 2026-10-23 and 2026-10-25)

Full lines in the header of `Tests/Pickle/Mod/Pickle/Features/13-workshop-captures-v3.feature`. Scenarios of that file rewritten from it the same day (steps checked, not played). Nothing of this rework is played. Opus director pass done (kept and refused points in the feature header). Published gallery unchanged; new images stay candidates until the owner agrees.

**Story.** One evening on the 4th of September 5500 (the fixture day, permanent summer), Clear all evening, start 16h then +30 game minutes per image (cumulative waits 60, 1310, 2560, 3810, 5060, 6310 ticks; image 7 at 19h30, 8810). Nelim, the protagonist, comes down to the pond to watch a sleeping teshi and stays through the dusk: the waking, the courting, the straw she carries to the nest, the egg, the hatching, the first meal. She always moves or faces East (pond x about 156, nest x about 213). One outfit all evening: sage CollarShirt (126, 150, 118), dark brown Pants (70, 56, 44), Bob (62, 44, 32), brown eyes, MouthSmile and LidCheerful. In image 7 (published) she wears a clean white shirt: she changed to tend the injured teshi. Lit lantern from image 3 (dusk marker).

| # | Place, hour, frame | Subject, instant, how obtained |
|---|---|---|
| 1 | water-garden west bank, 16h00, WIDE root 4.5 centre (160, 172) | mother asleep on the bed (156, 172); Nelim has just come down the bank and slows at the bedside, next she stops and watches; she stands at (152, 173) facing East, forced to walk to (155, 173), 14 ticks pass, pause (mid-stride, profile) |
| 2 | same bank, 16h30, TIGHT root 1.8 centre (156, 171) | the mother has just risen from the bed behind her and follows Nelim, who walks away south out of frame; named Teshi spawned on the bed, `follows` Nelim within 3 cells, Nelim forced to walk (156, 169) to (156, 160), 10 ticks pass, pause (mother mid-step, front view) |
| 3 | same bank, 17h00, MEDIUM root 3.5 centre (158, 173) | the pair nose to nose, hearts (mate step); Nelim has just walked in with an armful of straw and glances at them, next she walks on to the nest; she carries 1 Hay, forced to walk (152, 174) to (155, 174), 14 ticks, pause (profile, face reads) |
| 4 | calm-zone, 17h30, MEDIUM-CLOSE root 3.2 centre (213, 185) | mother on the bed (215, 185), egg in its box; Nelim has carried the straw from the bank and reaches the nest, next she lays it by the bed; she carries 1 Hay, stands at (208, 185) facing East, forced to walk to (212, 185), pause after about 35 ticks (mid-stride) |
| 5 | calm-zone, 18h00, TIGHT root 2.3 centre (215, 185) | the egg has just hatched, Nelim hurries over; hatch by the game, then kit placed at (217, 184) under the empty box, Nelim forced to walk (209, 185) to (212, 185), 10 ticks, pause |
| 6 | calm-zone west of the nest, 18h30, MEDIUM root 2.8 centre (210, 185) | Nelim holds out the meal and the kit steps up, the mother watches (closing story image); as run f5d5 (stand, carry Meat_Chicken, kit one cell away), only the shirt and the root change |
| 7 | hut, 19h30, Health tab | published image, interface, set aside |

**Criteria, cell by cell** (a time, b decor, c living, d pawns, e action, f composition, g subject, j mod in thumbnail; k on the series below).

| # | a | b | c | d | e | f | g | j | Est. | Main risk and plan |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | 16h00, Clear, 60 ticks | GSAnimalBedBigPrestige (156, 172), Plant_Daylily (153, 175) | asleep mother, daylily, lily pads | sage shirt, Bob, smile | mid-stride walk (above) | wide, mother on the left third, pond right, bank foreground | the sleeper is watched | mother about 45 px at 268 px: weak, accepted for the wide opener | 4 | geyser (150) and hole (149) at the edge: frame x 152 to 168. Nelim's walk drawn only while ticks run: 14 ticks, pause |
| 2 | 16h30, 1310 ticks | bed (156, 172) behind, Plant_Daylily (153, 175) | mother front view, daylily | not in frame | mid-step follow (above) | tight, mother centred on the bed she left | she has just woken | fills the frame | 4.5 | named spawn cannot fix the sex: plan B `a female adult teshi belonging to the colony stands at (156, 171)` with the bed behind (e weak) |
| 3 | 17h00, 2560 ticks | empty bed (156, 172), DR_StickLantern lit (161, 171), Plant_Daylily (153, 171), (153, 170) | pair, daylilies | sage shirt, Bob, smile | carries Hay, mid-stride (above) | medium, pair centre, Nelim row 174, bed left | the courting | hearts and pair read | 4 | the carry may drop on a forced walk: then carry again after the walk |
| 4 | 17h30, 3810 ticks | EggBox (217, 185), GSAnimalBedBigPrestige (215, 185), Plant_YellowTallGrass 3 x 5 minus (216, 185), lantern lit (213, 186) | mother front view, egg | sage shirt, Bob, smile | mid-stride with Hay (above) | medium-close, Nelim west of the grass at row 185 | she builds the nest, Nelim helps | mother and egg fill the right half | 4 | hay covered her face last run: pause mid-stride (35 ticks), not at pick-up; plan B Meat_Chicken |
| 5 | 18h00, 5060 ticks | same nest minus grass (216, 184), (217, 184), Plant_Daylily (213, 184), (213, 185), lantern lit | kit and mother front view | sage shirt, Bob, BrowRaised, smile | hurries over (above) | tight, kit below the box on bare soil | it is born at dusk | kit and mother fill the frame | 4 | the kit wandered off last run: place it after the hatch, pause within 10 ticks |
| 6 | 18h30, 6310 ticks | lantern lit (213, 186), Plant_Daylily (209, 183), (211, 183), bare corner | kit, mother, daylilies | sage shirt, Bob, smile | holds out the meal (above) | medium, Nelim left, kit centre, mother right | the first meal, the teshi lives with people | subjects fill the frame | 4.5 | none new: accepted at 4 in run f5d5 |

**k, series.** One story written once at the top of the feature header (who, where, day, rhythm); scenes move from the pond to the nest, East to the nest; variety wide (1), tight (2, 5), medium (3, 4, 6); opening image sets the place (1), closing image is 6 with 7 as the night epilogue; teshi seen from the front in 2, 4, 5, 6.

**Series score 4 of 5.** Weak points: image 1 thumbnail (wide opener), image 2 relies on a named spawn whose sex cannot be fixed (plan B written), steps never combined (forced walk plus carry plus follow). Previous run, verdicts on the 2026-10-18 plan: image 3 at 3.5 (Nelim seen from behind), 4 at 3 (hay over her face), 5 at 2 (no kit in frame), 6 at 4 (run f5d5, proof `Evidence/gallery-v3-6b`); the gap with the estimate of 4 taught: write the instant, the method and the order of the steps. Images 1 and 2 never produced a report (Inbox, launcher exit -1073741205, twice on image 1).

Verdict after run: image 3 (ticket 2bff, green, total 1, Inbox/gallery-v4-3-the-parents) judged 3.5 of 5 (2026-10-27): pair nose to nose with hearts, lit lantern, bed, daylilies, strong; Nelim cut by the left edge, face under the hay, so she does not read as the protagonist. Fix idea: forced walk target one cell further East (156 or 157, 174) or camera centre shifted 1 cell West. Images 1, 2, 4, 5, 6 pending (9bb8 lost exit 98 and refiled 7271; 8734 red on (156, 160) not standable, fixed in 8f6b631 and refiled bd81).
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