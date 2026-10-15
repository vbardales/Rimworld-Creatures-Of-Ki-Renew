# Backlog

Work not yet done. State is in [STATUS.md](STATUS.md), tests in [TESTING.md](TESTING.md), publishing in [PUBLICATION.md](PUBLICATION.md).

## Now

- **Nothing in flight.** 1.1.0 is published (RimWorld 1.7 declared, load tested only). Not played on 1.7: laying, hatching, ADS2, Nocturnal, galleries, French.
- **Teshi people, as a Biotech xenotype (owner, 2026-10-15).** Add, with Biotech genes, the humanlike race that went with the teshi in the original Creatures of Ki. Not started: read the original mod to see what that race was (sources: upstream `emipa606/CreaturesOfKi`, `ATTRIBUTION.md`), then scope it (xenotype and genes only, or a new race), the dependency on the Biotech DLC (optional or required), and the new tests. It is a new version (minor), through the whole chain.
- **French egg description (owner, 2026-10-15, validated).** `Mod/Languages/French/DefInjected/ThingDef/Teshi.xml`, `EggTeshiUnfertilized.description`: end the sentence with "mais il est bien, bien meilleur une fois cuit." (English: "much, much better cooked"). It changes `Mod/`: ship it with the next version (patch at least), French labels replayed, `FRENCH_REVIEW.md` regenerated.
- **Gallery filter.** A ticket on this mod excludes `11-workshop-captures` and `12-workshop-captures-v2` (`!11-workshop-captures !12-workshop-captures-v2`) unless it uses `wsl-deps.sanctuary.map`: the gallery scenarios fail on any other map.

## Parked

- **Gallery, next series**: Nelim as protagonist, animals facing the camera on at least one capture (`GALLERY.md`, 2026-10-14). The meat scene (18h30) is parked until SanctuaryBacklot fixes the sweat on Nelim. The second series (`1-portrait.jpg` to `6-the-infirmary-health-tab.jpg`) is accepted; whether it is on the Steam page is not read.

- **Crossbreeding**: parked by the owner on 2026-09-25, "not for now". It needs a partner species the source does not have; the
  owner names it, or nothing is done. Read `CompEggLayer` and `CompHatcher` before promising anything.
- **Upstream PR**: not possible, `emipa606/CreaturesOfKi` is archived. The branch stays on the fork `vbardales/CreaturesOfKi`.
