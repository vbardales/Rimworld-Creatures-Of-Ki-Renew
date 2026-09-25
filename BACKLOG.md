# Backlog

Work not yet done. What is being tested is in [STATUS.md](STATUS.md), and how in [TESTING.md](TESTING.md).
Nothing here blocks `tested`.

## Before `done → tested`

The final validation at `ccd2685` is read: three passes green, the new colony red. One item is left.

**Replay `09-new-colony` green, once, in a ticket of its own, when the NewColony tool has changed.** Its first run failed in
the tool, not in the mod: with Ideology on it starts a game with no ideoligion and no starting pawns, so vanilla throws in
the starting meals. The tool's session was told on 2026-09-25 with the evidence. Nothing to do here until it answers, and no
replay before, since a new colony is random and used sparingly.

## Optional integrations

Asked on 2026-09-25: can the mod also handle Nocturnal Animals and Crossbreeding? The owner's answer the same day:
**crepuscular for the teshi, and no crossbreeding for now.** The first is decided and waits for the final validation to end,
because a change under `Mod/` now would be read by the five requests filed at `ccd2685`. The second is parked.

### 1. [XND] Nocturnal Animals (Continued) — decided: crepuscular, to write after the last `RUN_DONE`

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

**The rhythm, the owner's choice on 2026-09-25: `Crepuscular`.** The source says only "a large, bipedal feathered predator",
and no rhythm table in the collection lists the teshi, so the value is the owner's, not derived from the source. The
`bodyClock` above is therefore `Crepuscular`.

**To do, in order, once the last `RUN_DONE` of the final validation is read:** the patch; the offline test on its shape;
the pass map and the scenario; a README, CHANGELOG and ATTRIBUTION line saying the rhythm is a choice of this port. It
changes `Mod/`, so it is a new revision that the final validation does not cover: a small ticket for the new scenario, and
the affected passes again before `tested` is claimed for it.

**Testing.** One pass map with Harmony and Nocturnal Animals, which are not in the WSL workshop cache today, one scenario
`10-nocturnal` with `@requires`, and a local step that reads the extension off the def. One offline test for the shape
of the patch, as for the ADS2 one. Small.

### 2. Crossbreeding — parked by the owner on 2026-09-25, "not for now"

What follows is what to know when it comes back: which mod, and then a partner.

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
