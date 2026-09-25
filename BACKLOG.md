# Backlog

Work not yet done. What is being tested is in [STATUS.md](STATUS.md), and how in [TESTING.md](TESTING.md).

## Before `done → tested`

The final validation at `ccd2685` is read: three passes green, the new colony red. The revision has since changed by one
conditional patch (Nocturnal Animals, below), so what is left, in this order:

1. **Play `10-nocturnal-integration` alone** in the Nocturnal pass: an exploration, since the step and the pass are new.
2. **Then, one ticket each, on the revision that holds the patch**: the Nocturnal pass, English fast set, and its slow
   laying and hatching, since a crepuscular teshi is the change most likely to touch the laying; the minimal English `01-loads`,
   since the patch file is read in every pass and must log nothing without the other mod; and `09-new-colony`.
3. **`09-new-colony` green, once**, with the changed NewColony tool. Its first run failed in the tool, not in the mod: with
   Ideology on it started a game with no ideoligion and no starting pawns, and vanilla threw in the starting meals. The
   tool's session answered on 2026-09-25 that it is fixed (commit 35b1252 in PickleTools, the classic ideoligion is
   chosen, the step fails clearly with no colonist) and did not replay it, to spare the machine. The replay is this
   mod's, in a ticket of its own with `-Extra "-pickle-scenario-timeout=400"`. A new colony is random and used sparingly.

## Optional integrations

Asked on 2026-09-25: can the mod also handle Nocturnal Animals and Crossbreeding? The owner's answer the same day:
**crepuscular for the teshi, and no crossbreeding for now.**

### 1. [XND] Nocturnal Animals (Continued) — written, crepuscular, not yet played

Mod: `Mlie.XNDNocturnalAnimals`, Workshop 2269731409, has a 1.6 folder, needs Harmony. Fetched into the WSL cache on
2026-09-25 with `scripts/download-workshop-wsl.sh`.

`Mod/Patches/NocturnalAnimals.xml` is one `PatchOperationFindMod` that adds this to the teshi:

```xml
<li Class="NocturnalAnimals.ExtendedRaceProperties">
  <bodyClock>Crepuscular</bodyClock>
</li>
```

`Diurnal` is the default of the enum, so a diurnal teshi needs nothing. The precedents in this collection are
`SquirrelVarietyPackRenew/Mod/Patches/NocturnalAnimals.xml` and `AnimalsAsNatural/Mod/Patches/Rythme.xml`.
Two rules from them, both checked by the offline suite:

- **The patch must sit under `PatchOperationFindMod`.** The class belongs to Nocturnal Animals, and when it is missing the
  game drops the whole def instead of ignoring the extension. On 2026-09-10 that took 47 vanilla animals with it.
- `FindMod` compares the mod's `<name>`, not its packageId, so both names go in: `[XND] Nocturnal Animals` and
  `[XND] Nocturnal Animals (Continued)`.

Unlike Animal Prosthetics 2, the patch touches only the mod's own def, so `About.xml` needs no `loadBefore` and no
dependency.

**The rhythm is the owner's choice of 2026-09-25, not the source's.** The source says only "a large, bipedal feathered
predator", and no rhythm table in the collection lists the teshi. README, CHANGELOG, ATTRIBUTION, About.xml and the
Steam template say so.

**Written:** the patch, the offline test on its shape (22 checks now), the local step that reads the extension off the
parsed race, `10-nocturnal-integration`, `wsl-deps.avec-nocturnal.map`, and the documents. **Not played.** Whether the
class name and the field are exactly as the sibling patches write them is what the first run shows.

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
