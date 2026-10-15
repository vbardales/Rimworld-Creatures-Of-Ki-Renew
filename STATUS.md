---
localization: complete
translation_en: complete
translation_fr: complete
settings_audit: not_applicable
workflow_stage: dormant
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
session:      local_cdb49a53-4709-450a-a794-ed6ec0aff3ec
updated:      2026-10-15, dormant: 1.1.0 published, non-regression green, Use This Instead posted, cleanup done (history in docs/runs/status-history.md)
remaining:
  - 1.1.0 published (Steam 2026-10-13 22:07 UTC, tag v1.1.0, tags Mod 1.6 1.7). `tested_1_7: yes` = load only, English (ticket e8c8); not played on 1.7: laying, hatching, ADS2, Nocturnal, galleries, French.
  - for dormant: 14.c WSL Workshop mods downloaded by this mod's sessions (list first, owner approves), then `Check-Status.ps1` (crashes on `Get-FileHash`, shared script, for the Audit workflow session).
  - disclosed gaps against AUDIT.md (loop-declared stages, dispatch before lint, 1.7 declared before a green run, no `TEST_SCENARIOS.md`): in docs/runs/status-history.md, "AUDIT.md read in full, 2026-10-15".
  - unverified: gallery images on the Steam page and the thanks comment were posted by the owner (her word); no session read the page.
social_preview_sha256: 4215d8aea8baefad192e4e9e984310acdd32fbc195035a2a12f6603f1ed33602
publication_changelog_review_sha: 188150b48a60f21c6c5dfeeed31b9e8f6cf3bb65
echo_review_sha: df1a839d53973f987049b283a231f51115345463
code_review_sha: 188150b48a60f21c6c5dfeeed31b9e8f6cf3bb65
protocols_read_sha: 6eeb289af92096fa3a7ee40825e3b5221030873d
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


**WSL cleanup, 2026-10-15 (14.c).** Nothing removed: the two optional Workshop mods this mod's passes fetched, 3238353862 (ADS2) and 2269731409 (Nocturnal Animals), are still named by the `wsl-deps` of other mods (at least 10 and 9; ACertainSeries, AlphaMythology, ASlothMod, DustBunnies, Ebbbs, Dalmatians and others), so they stay. The Ticket Manager was asked for a slot and did not answer; the machine lock was free and the queue empty at the check, and nothing was deleted. Protocols re-read: AUDIT.md 14.c (cleanup message gives the owner the Workshop links to unsubscribe from), USE_THIS_INSTEAD.md (this mod's row `posted`). Check-Status.ps1 run under pwsh: 0 error, 0 warning.
