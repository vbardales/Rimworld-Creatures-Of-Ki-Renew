# Backlog

Work not yet done. What is being tested is in [STATUS.md](STATUS.md), and how in [TESTING.md](TESTING.md).
Nothing here is started, and nothing here blocks `tested`.

## Optional integrations

Asked on 2026-09-25: can the mod also handle Nocturnal Animals and Crossbreeding? The first can, once one thing is
decided. The second cannot be written yet, and what stops it is not technical.

### 1. [XND] Nocturnal Animals (Continued) — feasible, waits for a rhythm

Mod: `Mlie.XNDNocturnalAnimals`, Workshop 2269731409, has a 1.6 folder, needs Harmony.

**How.** `Mod/Patches/NocturnalAnimals.xml`, one `PatchOperationFindMod` that adds the extension to the teshi:

```xml
<li Class="NocturnalAnimals.ExtendedRaceProperties">
  <bodyClock>Nocturnal</bodyClock>
</li>
```

`Diurnal` is the default of the enum, so a diurnal teshi needs nothing. The precedents in this collection are
`SquirrelVarietyPackRenew/Mod/Patches/NocturnalAnimals.xml` and `AnimalsAsNatural/Mod/Patches/Rythme.xml`.
Two rules from them:

- **The patch must sit under `PatchOperationFindMod`.** The class belongs to Nocturnal Animals, and when it is missing the
  game drops the whole def instead of ignoring the extension. On 2026-09-10 that took 47 vanilla animals with it.
- `FindMod` compares the mod's `<name>`, not its packageId, so both names go in: `[XND] Nocturnal Animals` and
  `[XND] Nocturnal Animals (Continued)`.

Unlike Animal Prosthetics 2, the patch touches only the mod's own def, so `About.xml` needs no `loadBefore` and no
dependency.

**The decision, the owner's.** Which rhythm. The source says only "a large, bipedal feathered predator", and no rhythm
table in the collection lists the teshi. Any value but `Diurnal` is an invention of this port, so it is chosen, not
derived. If the answer is "leave it diurnal", the item closes with a line in the README and no patch.

**Testing.** One pass map with Harmony and Nocturnal Animals, which are not in the WSL workshop cache today, one scenario
`10-nocturnal` with `@requires`, and a local step that reads the extension off the def. One offline test for the shape
of the patch, as for the ADS2 one. Small.

### 2. Crossbreeding — first, which mod, and then a partner

Three things are called that, and they are not the same work.

| What | Where | What it needs from this mod |
| --- | --- | --- |
| Vanilla cross-breeding, 1.6 | `<canCrossBreedWith>` on the race, used once in Odyssey | a partner species, in XML, no dependency |
| Better Crossbreeding, 3520675842 | a modExtension per partner: maternal, paternal, random, or another species from a list | the same partner, and it does nothing on its own. It reads only the mother's extension, so both species must declare it |
| Crossbreeding, 3039384154 | not read, the page refused the request | unknown |

**What stops it.** Every form needs a partner species. The source teshi has none, so the partner and the outcome would be
invented, and adding the teshi to another mod's list edits that mod's def, as the arm recipes of Animal Prosthetics 2 would.
That is the owner's call, and there is nothing to derive.

**What is unknown, and to read before promising anything.** How an egg layer behaves in a cross. The teshi lays
`EggTeshiFertilized`, which hatches into a teshi through `CompHatcher`. Whether vanilla's cross replaces the offspring of an
egg layer, or only of a pregnancy, has to be read in the decompiled `CompEggLayer` and `CompHatcher`. The field name of
`canCrossBreedWith` is from the 1.6 modding page and is to be confirmed on `Assembly-CSharp` too.

**Proposal.** Do nothing until the owner names a partner and says which of the three. Nothing is lost meanwhile: the mod
declares no cross, so the teshi breeds only with its own kind, as in the source.
