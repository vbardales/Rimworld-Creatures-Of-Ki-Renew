# Protocols read, and at which version

Kept by the session that holds this mod. It says which document was read, at which version, and which ones did not
help, so that they are not read again unless they move. The version is the last commit that touched the file in its
own repository, and `clean` means `git status` showed nothing for it, so the file read is the one committed.
Read on 2026-09-25 by session `local_ebbf6354-e959-4188-bafe-63729c5190ff`. Line counts skip blank lines. Earlier reads, on 2026-09-24, were of older
files: `AUDIT.md` then had 212 lines and now has 202, `PUBLISHING.md` 679 and now 558, `STYLE_RIMWORLD.md` 502 and now 385.
None of that earlier reading is relied on here.

Re-read `AUDIT.md`, `AGENTS.md` and `Rimworld-Ticket-Dispatcher/docs/WELCOME.md` at the start of a session and after every
compaction of the context (`WELCOME.md`, section 5). Compare the hash below before rereading anything else.

## Read, in the monorepo (`Documents/rimworld`, HEAD `9afdc758`)

| Document | Version read | Lines | Verdict |
| --- | --- | --- | --- |
| `AGENTS.md` | `90d51374` 2026-09-25 15:25, clean, sha256 `36631E730433` | 38 | Useful. Evidence policy and the CI publishing rules. |
| `AUDIT.md` | `90d51374` 2026-09-25 15:25, clean, sha256 `F46FE88E5EC0` | 202 | Useful, the main one. Runs are filed with `Submit-PickleRun.ps1`, no session keeps a process or a watcher, small tickets, no SHA in a request so the tree is frozen and the SHA goes in the label. New: the 32 px icon check, the fail fast policy, `PUBLICATION.md` and `TESTING.md` as files a mod carries. |
| `PUBLISHING.md` | `90d51374` 2026-09-25 15:25, clean, sha256 `D3660C50CF84` | 558 | Partly useful now, mostly for `prepublished`. The description sections, the thanks owed to every named integration and to Pickle, RimLogging and PickleTools, the comment registry, and the commit rule (pathspec on `commit`, never `--amend` without reading `git log -1`). |
| `TRANSLATIONS.md` | `90d51374` 2026-09-25 15:25, clean, sha256 `3368579D01DC`, file unchanged since 2026-09-13 | 81 | Useful, unchanged since it was first read. Nothing new. |
| `STYLE_RIMWORLD.md` | `90d51374` 2026-09-25 15:25, clean, sha256 `DE13CBE5E1F9` | 385 | Little use. Only "ModIcon: contrôle, pas génération" and the file constraints table apply, since the showcase belongs to the owner. |
| `MOD_SETTINGS.md` | `90d51374` 2026-09-25 15:25, clean, sha256 `404916BC99A7`, file unchanged since 2026-09-13 | 107 | Not on the list, read on 2026-09-24. Unchanged. Nothing new: `settings_audit` stays `not_applicable`. |
| `scripts/SEARCHING.md` | `90d51374` 2026-09-25 15:25, clean, sha256 `9DBD52B2BCD4` | 135 | **Not useful for this mod**, which searches no corpus. Reread only for a defName collision search. One trap worth keeping: the session's own Grep and Glob tools time out at twenty seconds on the mod corpus and can return a partial result. |

## Read, in the tools and administration repositories

| Document | Version read | Lines | Verdict |
| --- | --- | --- | --- |
| `PickleTools/README.md` | `2b7b6d0` 2026-09-25 17:22, clean, sha256 `6EA974180EB8` | 68 | Useful. The tool table and how a pass map stages one. |
| `PickleTools/Headless/README.md` | `b2712fc` 2026-09-25 15:03, clean, sha256 `988DBF0DCEE7` | 395 | Useful. Filter terms, pass maps and their order, the launcher's exit codes, evidence, and the traps: the game logs in UTC, screenshot names reach 183 characters, `Remove-Item` and `Copy-Item` stop on long paths. |
| `PickleTools/Authoring/README.md` | `b1f1abd` 2026-09-25 14:58, clean, sha256 `C9AD28CAF37C` | not reread | Not on the list. Read on 2026-09-24, its version not recorded then, and the suite was written from it. Read it again before the suite is next changed. |
| `PickleTools/Docs/steps.md` | untracked, sha256 `61750ECA84D2` | 164 | **Not useful.** It lists this collection's own tools' steps, generated from their sources. The suite uses one tool, `InspectTabs`. Pickle's own catalogue is on GitHub, not on this disk, so the vocabulary was read from the installed Pickle assemblies instead. |
| `Rimworld-Release-Admin/docs/OPERATIONS.md` | `d403592` 2026-09-25 16:33, clean, sha256 `6F556DE4BBF7` | 141 | **Not useful yet.** The publishing runbook: dry-run before publish, a full SHA, only the owner approves `steam-production`, credentials never in a session. Needed at `prepublished`, not before. |
| `Rimworld-Ticket-Dispatcher/docs/WELCOME.md` | `79668cc` 2026-09-25 17:16, clean, sha256 `B9F93A680F17` | 74 | Useful. Small tickets, no watcher, a request carries no SHA. |
| `Rimworld-Ticket-Dispatcher/docs/SUBMIT.md` | `79668cc` 2026-09-25 17:16, clean, sha256 `9AC5E37BB64C` | 101 | Useful. `-DepMap` takes a file name or an absolute path, never a relative path with a separator. Delete archives with `robocopy /MIR`. Do not keep `report.html` or `messages.ndjson`. |

## In this repository

| Document | State |
| --- | --- |
| `STATUS.md`, `README.md`, `CHANGELOG.md`, `ATTRIBUTION.md`, `LICENSE`, `Mod/About/About.xml`, `docs/runs/`, `Tests/Pickle/` | Present and kept current. |
| `TESTING.md` | Renamed from `TESTS.md` on 2026-09-25 at the owner's word, because `AUDIT.md` expects the passes to be declared in a `TESTING.md`. It carries the manual scenarios, the passes this suite needs, what `tested` requires and the evidence to keep. |
| `PUBLICATION.md` | **Absent.** Needed at `prepublished`: the order of the captures, the thanks comments, the dependencies, the adult content answers, and the change note under `### <version>`. |
| `BACKLOG.md`, `NOTES.md`, `BUGS.md` | **Absent**, and nothing needs them. The repository's own backlog is the `remaining` list of `STATUS.md`. The monorepo's `BACKLOG.md` is not this mod's. |
| `docs/PROTOCOLS-READ.md` | This file. |

## What the reading changed for this mod

- **A request carries no SHA.** The six requests filed so far had none in their label, and commits landed on documents
  while a request waited. The revision each run read was inferred from commit times, not read from a report, so the next
  requests put the SHA in `-Label` and leave the tree alone until `RUN_DONE`.
- **The 32 px icon check is new.** Done on 2026-09-25 from `Mod/About/ModIcon.png`, 128 x 128, 14,065 bytes: at 32 px the
  head, the wink, the horns and the ponytail stay distinguishable. That is a reading of the picture, and the owner decides.
  Whether she accepts the icon edit of 2026-09-13 stays open.
- **`prepublished` will owe thanks** to A Dog Said... Animal Prosthetics 2's author, to Pickle, RimLogging and PickleTools,
  each with a Workshop link, and an entry in the comment registry for every one of them that has a public page.
- **The fail fast policy** applies to the `1.0.0` of an item made by the `0.1.0` prepublication: no red scenario without a
  green replay, the gallery and the owner's manual checks before `publish`, the rollback target chosen first.
