# Backlog

Work not yet done. What is being tested is in [STATUS.md](STATUS.md), and how in [TESTING.md](TESTING.md).

## Done: `done → tested`, on 2026-09-26

The final validation is read and every pass is green, `09-new-colony` included after the NewColony tool's fix. STATUS.md has
the results. Nothing here is left for `tested`. The passes of `ccd2685` (minimal fast, slow, French, and ADS2) were not replayed
on the revision that holds the Nocturnal patch, which does nothing without the other mod and was covered by the Nocturnal pass
and by `01-loads`; the owner made their replay a non-regression run, after the publication (next section).

## After the publication: the non-regression passes

Decided by the owner on 2026-09-26. The passes of `ccd2685` (minimal English fast and slow, French, and Animal Prosthetics 2)
were not replayed on the revision that holds the Nocturnal patch. They are a non-regression run, so **not required before the
publish**, as the fail-fast policy of `AUDIT.md` has it, but **to be done once the item is published**, on the SHA that was
published: four tickets, the same scope as the first validation (every scenario of the pass), each with its SHA in its label.
Nothing is filed now.

## At `prepublished`, not before

`PUBLICATION.md` does not exist yet: the order of the captures with what each shows, the thanks comments (one per author, under
1000 characters, posted once the item is public), the dependency and DLC answers, the adult-content answers and the change
note under a version heading. The owner reads `Mod/README.template.md`. The other decisions are the owner's and are listed in
STATUS.md `remaining`: the icon edited on 2026-09-13, category 2 or 3 for Animal Prosthetics 2, whether to add `Arm` to its arm
recipes (which rewrites another mod's recipes, and is not done), and the Steam page, which changes only through a publish with
`update_description` that the owner approves.

The CI/CD session announced on 2026-09-25 that the Steam description will have **one source**: a Markdown block under
`## Steam description` in `PUBLICATION.md`, from which the CI generates the BBCode and the `<description>` of `About.xml`,
every dry-run and publish stopping if `About.xml` differs. Nothing is forced now, and it is adopted at the next
publication or when the owner asks. For this mod it means `Mod/README.template.md`, which the owner named as the source
on 2026-09-25, moves into `PUBLICATION.md` (no code fence in it, last line `[Source code on GitHub](URL)`), and the
hand-written `<description>` of `About.xml` is then regenerated, its diff read. The dry-run of the exact SHA must show
a description that reads the same as the page, and a change note must carry the version on its first line. Do not edit
`.github/` by hand. Details: `Rimworld-Release-Admin/docs/OPERATIONS.md`, "Changing where the Steam description comes from".

## Optional integrations

Asked on 2026-09-25: can the mod also handle Nocturnal Animals and Crossbreeding? The owner's answer the same day:
**crepuscular for the teshi, and no crossbreeding for now.**

### 1. [XND] Nocturnal Animals (Continued) — done, crepuscular, played green on 2026-09-26

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
parsed race, `10-nocturnal-integration`, `wsl-deps.avec-nocturnal.map`, and the documents. **Played:** the class name and the
field are as the sibling patches write them, the whole English set and the slow laying pass with the other mod mounted, and
`01-loads` passes with it absent.

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
