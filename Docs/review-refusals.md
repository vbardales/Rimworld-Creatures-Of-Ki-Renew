# Review refusals

ChatGPT suggestions refused by this mod's session or by the owner. One line each: key or text | proposal | reason | date. `/review-translation` sends this file with every page and tells ChatGPT not to propose these again (AUDIT 6.g).

| Key or text | Proposal | Reason | Date |
|---|---|---|---|
| `TRANSLATION_REVIEW.md` (was `FRENCH_REVIEW.md`), "Original" column and source language | Record a source language; the Original column repeats the English | Refused: generated file, and this renew's source texts are English, so the repetition is true; the `?` column stays empty, the owner's reading of the French is hers | 2026-10-15 |
| `EggTeshiUnfertilized.description` (French) | Style point: "bien meilleur" against the English "much, much better" | Not applied at the time (it changes `Mod/`); the owner chose the variant "bien, bien meilleur", listed in `BACKLOG.md` for the next version. Do not propose another wording | 2026-10-15 |
| `BodyDef/Teshi.xml`, `BipedAnimalWithClawsAndTail.corePart.parts.right_arm.parts.right_claw.customLabel` (English "right claw", French "griffe droite") | Add "front" to match the left claw: "front right claw" and "griffe avant droite" | Refused: both labels are the original mod's names, kept on purpose (`06-labels-en.feature` header, `07-labels-fr.feature`); the Pickle features find parts by these labels. Owner may change it later | 2026-11-12 |
| `TRANSLATION_REVIEW.md`, section "Review line (Virginie only)" | The session should fill the review line | Refused: that line is the owner's alone; her validation of 2026-11-12 is recorded in `STATUS.md` (`translation_fr`) | 2026-11-12 |
| `TRANSLATION_REVIEW.md`, review line revision `b057311` against generated revision `24c7a3e` | Regenerate on the reviewed revision or show the sources are identical | Refused as a change: the review line is the owner's alone and records her validation at `b057311`; proved identical instead: `git diff b057311 HEAD -- Mod/Languages Mod/Defs Mod/Patches` is empty (only About.xml, tests and docs changed) | 2026-11-12 |
