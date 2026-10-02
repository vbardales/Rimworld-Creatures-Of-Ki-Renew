# Backlog

Work not yet done. State is in [STATUS.md](STATUS.md), tests in [TESTING.md](TESTING.md), publishing in [PUBLICATION.md](PUBLICATION.md).

## Now

- **Non-regression after the 1.0.0 publish** (fail fast, decided 2026-09-26): four tickets filed 2026-10-02, `a432`, `4a86`,
  `e92c`, `9c7d`. Read each `exitReason` and the counts; verdicts go to `STATUS.md` and `docs/runs/`. A red result is a defect
  of 1.0.0: roll back by a new publication, then fix.
- **Preview.** `e8b3a89` redrew the Preview echo after the publish; the owner decides whether to ship it in a 1.0.1
  (`update_preview`, own dry-run) or restore the published one. `Art/Gallery/0-preview.png` must stay identical to it.
- **Register.** Write the `2726461020` row in `../WORKSHOP_COMMENTS.md` (thanks to Shooki and Mlie, posted by Virginie).

## Parked

- **Crossbreeding**: parked by the owner on 2026-09-25, "not for now". It needs a partner species the source does not have; the
  owner names it, or nothing is done. Read `CompEggLayer` and `CompHatcher` before promising anything.
- **Upstream PR**: not possible, `emipa606/CreaturesOfKi` is archived. The branch stays on the fork `vbardales/CreaturesOfKi`.
