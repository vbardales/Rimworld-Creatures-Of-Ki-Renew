---
localization: complete
translation_en: complete
translation_fr: complete
settings_audit: not_applicable
workflow_stage: published
mod:          Creatures of Ki - Teshi Renew
packageId:    nelim.creaturesofki
repo:         Rimworld-Creatures-Of-Ki-Renew
remote:       https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Renew.git
local_path:   C:\Users\nelim\Documents\rimworld\CreaturesOfKiRenew
visibility:   public
detached:     yes
stage:        published
licence:      open
licence_spdx: MIT
licence_github_detection: Other (NOASSERTION)
licence_at:   LICENSE and Mod/LICENSE, copyright 2020 Mlie
upstream_mod_remotes:
  - https://github.com/emipa606/CreaturesOfKi
upstream_pr:  attempted 2026-09-28, refused (repository archived, read-only). Branch kept on vbardales/CreaturesOfKi teshi-1.6-support
dependencies: none
showcase:     complete
tested_on:     2026-09-26, the final validation of the revision 1fcc51f, every pass green (docs/runs/2026-09-25.md, 2026-09-26.md); published 2026-10-02 at 49d9a726f64e5d491fb7e1b77fd438c81eb97522
workshop:     3806709627
version:      1.0.0 (tag v1.0.0, GitHub release, Steam content manifest 6682224070142369171)
maintainer:   Claude Code, the session named in session, which holds this standalone repository
session:      local_cdb49a53-4709-450a-a794-ed6ec0aff3ec
updated:      2026-10-02, moved to published and cleaned (history in docs/runs/status-history.md)
remaining:
  - unverified: the Nocturnal pass and the new-colony scenario were not replayed after the publish: the 2026-09-26 runs on `1fcc51f` stand, and nothing under `Mod/` besides the Preview changed since the publish.
  - feature: 1.0.1, future, not scheduled (owner, 2026-10-02). It ships the Preview redrawn in `e8b3a89` (661685 bytes, the published one is 666772) with `update_preview`, its own dry-run on a new commit; `Art/Gallery/0-preview.png` is identical to it today and must stay so. Whatever else changes under `Mod/` by then goes in the same version.
  - unverified: the Steam page was checked by Virginie ("C'est bon", 2026-10-02, relayed) and the CI log shows preview 666772 bytes and description 5252 characters sent; no session has read the page (Steam answers 429 to the CI).
  - unverified: the thanks to Shooki and Mlie on Creatures of Ki (Continued), 2726461020, were posted by Virginie (her word, 2026-10-02); no session read the comment. The register row and the `Covers` of ADS2 and Nocturnal Animals are committed in the protocols repository (`91f4a85`).
---

# Creatures of Ki - Teshi Renew — status

## Current state — 2026-10-02

**Non-regression, done 2026-10-02 (fail fast).** Four tickets filed with `49d9a72` in the label (`a432` minimal English fast,
`4a86` slow laying and hatching, `e92c` minimal French, `9c7d` ADS2), staged from the working tree when played, so with the
Preview of `e8b3a89` (no behaviour change). Every real scenario passed: 11 + 2 + 6 + 15 = all of 01 to 08 in both languages.
`exitReason` is `failed` on three of them only because of the three `11-workshop-captures` gallery scenarios ("Fixture
'nelim-zen-meadow-studio' not found"), which my ticket filters did not exclude and which need the `Nelims-tribe` fixture (`wsl-deps.sanctuary.map`, which replaced the studio map on 2026-10-05): a ticket
mistake, not a defect of 1.0.0, and no rollback. Lines in `docs/runs/2026-10-02.md`.

Published. Dry-run [36979726964](https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Renew/actions/runs/36979726964) then
publish [36982893195](https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Renew/actions/runs/36982893195), both on
`49d9a726f64e5d491fb7e1b77fd438c81eb97522`, version 1.0.0, approved by Virginie. Steam log: content and preview uploaded to
item 3806709627, "Upload finished: OK". Tag `v1.0.0` and the release point at that SHA. The item is public.
Convention (c), decided by Virginie: the dry-run SHA is published, and this record is a later docs-only commit.
Run `37019682829` failed on purpose ("tag v1.0.0 already exists", the anti-double-publication guard) and sent nothing.
A new publication needs a new version (1.0.1+) on a new commit, with its own dry-run.

- **Code review, 2026-10-05.** Low-effort `/code-review` of the `Mod/` diff since the 0.1.0 prepublication (`98a7c49`, hunks
  only, `Preview.png`, `ModIcon.png`, `Languages/` and tests excluded) at `c342ee91ca41574d075e9b480817714cb7901163`
  (HEAD at the time; the Art tidy-up commit): no finding. A review, not a test: nothing was run.
- **Gates.** Settings: `not_applicable` (the mod has no settings, no page, no MainButtons shortcut; checked in the sources).
  Localization, English and French: complete. Virginie reviewed the French of `47c401e` (`FRENCH_REVIEW.md`, 24 rows): natural
  French, correct anatomical terms, no pawn agreement, no correction. Any later change to a French file sets
  `translation_fr` back to `unchecked`.
- **Tests.** Offline suite `scripts/Run-Functional-Tests.ps1`, Pickle suite in `Tests/Pickle/`, passes declared in `TESTING.md`.
  Every scenario played green in the final validation, no `@wip`, the three `@requires` passes (08 ADS2, 09 new colony,
  10 Nocturnal) played, no manual test left. Lines in `docs/runs/`, evidence kept in `Tests/Pickle/Evidence/` (16 MB).
- **Integrations.** A Dog Said... Animal Prosthetics 2: category patch plus `ADS2_Arms.xml` (adds `Arm` to its two arm
  recipes), optional, `loadBefore`. [XND] Nocturnal Animals (Continued): crepuscular, one `FindMod` patch, the owner's choice.
  Crossbreeding parked by the owner ("not for now"). No dependency, no DLC required.
- **Description.** Single source: `PUBLICATION.md`, `## Steam description`, regenerated into `About.xml` by
  `node .github/scripts/sync-about-description.mjs --write` (`--check` clean as of 2026-09-27). The Steam description of
  the 1.0.0 upload replaced the 0.1.0 paragraph on the egg.
- **0.1.0 prepublication.** It was uploaded from the working tree and probably carried nine `.dds` caches. The 1.0.0 content is
  staged by the CI from a git checkout, which holds no `.dds` (none is tracked, `*.dds` is ignored), so the item no longer
  does. Not read on Steam.
- **Icon and Preview, regenerated 2026-10-05** at the owner's request after her `Art/ModIcon-source.png` changed: the Preview by
  `node ../scripts/Render-Preview.cjs` (666485 bytes, `Art/Gallery/0-preview.png` identical, both `.ico` rewritten), the
  `Mod/About/ModIcon.png` by a mechanical reduction of her source (1286 x 1223 to 128 x 122, centred in 128 x 128, 33090
  bytes), no retouching. Both were looked at. Not in the published 1.0.0; they ship with the future 1.0.1.
- **Icon and Preview.** `Mod/About/ModIcon.png`, 128 x 128, edited by a session on 2026-09-13; the owner confirmed it on
  2026-09-26 and again on 2026-10-02. The 32 px check was run on 2026-09-25. The Preview carries the ModIcon bottom-left,
  tilted, and the owner confirmed it on 2026-10-02. The previous icon and the old composition files were removed from `Art/` on 2026-10-02 (still in git history before that commit).

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
