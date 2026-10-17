# Backlog

Work not yet done. State in [STATUS.md](STATUS.md), tests in [TESTING.md](TESTING.md), publishing in [PUBLICATION.md](PUBLICATION.md).

## Now

- **Nothing in flight.** 1.1.0 published (RimWorld 1.7 declared, load tested only). Not played on 1.7: laying, hatching, ADS2, Nocturnal, galleries, French.
- **Teshi people, as Biotech xenotype (owner, 2026-10-15).** Add, with Biotech genes, humanlike race that went with teshi in original Creatures of Ki. Not started: read original mod to see what race was (sources: upstream `emipa606/CreaturesOfKi`, `ATTRIBUTION.md`), then scope it (xenotype and genes only, or new race), Biotech DLC dependency (optional or required), new tests. New version (minor), through whole chain.
- **French egg description (owner, 2026-10-15, validated).** `Mod/Languages/French/DefInjected/ThingDef/Teshi.xml`, `EggTeshiUnfertilized.description`: end sentence with "mais il est bien, bien meilleur une fois cuit." (English: "much, much better cooked"). Changes `Mod/`: ship with next version (patch at least), French labels replayed, `FRENCH_REVIEW.md` regenerated.
- **Gallery filter.** Ticket on this mod excludes `11-workshop-captures` and `12-workshop-captures-v2` (`!11-workshop-captures !12-workshop-captures-v2`) unless it uses `wsl-deps.sanctuary.map`: gallery scenarios fail on any other map.

## Parked

- **Gallery, next series**: Nelim as protagonist, animals facing camera on at least one capture (`GALLERY.md`, 2026-10-14). Meat scene (18h30) parked until SanctuaryBacklot fixes sweat on Nelim. Second series (`1-portrait.jpg` to `6-the-infirmary-health-tab.jpg`) accepted; whether on Steam page not read.

- **Crossbreeding**: parked by owner 2026-09-25, "not for now". Needs partner species source lacks; owner names it, or nothing done. Read `CompEggLayer` and `CompHatcher` before promising anything.
- **Upstream PR**: not possible, `emipa606/CreaturesOfKi` archived. Branch stays on fork `vbardales/CreaturesOfKi`.