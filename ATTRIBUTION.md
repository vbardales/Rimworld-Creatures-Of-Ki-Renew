# Creatures of Ki — Teshi: what was taken, and what was changed

## Source

| | |
|---|---|
| Mod | Creatures of Ki (Continued) |
| Original author | Shooki |
| Continuation | Mlie (`emipa606`) |
| Workshop | [2726461020](https://steamcommunity.com/sharedfiles/filedetails/?id=2726461020) |
| Repository | https://github.com/emipa606/CreaturesOfKi |
| Last version supported | 1.4 |
| Licence | MIT — see `LICENSE` |

The upstream repository carries an MIT licence, copyright Mlie 2020. That notice ships with this
mod, which is what MIT asks in exchange for redistribution.

## What was taken

Three def files and nine textures were taken from the original; a fourth def file
was added for the unfertilized egg, and a patch file for an optional integration. The playable race was
excluded.

| File | Origin |
|---|---|
| `Defs/ThingDefs_Races/Races_Animal_Teshi.xml` | `1.4/Defs/ThingDefs_Races/Races_Animal_Teshi.xml` |
| `Defs/ThingDefs_Items/Items_Resource_Teshi.xml` | `1.4/Defs/ThingDefs_Items/Items_Resource_Teshi.xml` |
| `Defs/Bodies/Bodies_Animal_Teshi.xml` | `1.4/Defs/Bodies/Bodies_Animal_Teshi.xml` |
| `Textures/Things/Pawn/Animal/Teshi/*` | unchanged, nine files |

`Defs/ThingDefs_Items/Items_TeshiEggUnfertilized.xml` is new — see below.

## What was left behind

`Races_Kija.xml`, `PawnKinds_Kija.xml`, `Factions_Kija.xml`, `Factions_Kija_Player.xml` and
`RulePacks_NameMakers_Kija.xml`: the playable race, its two factions and its name makers. All of it
depends on Humanoid Alien Races, and the teshi depends on none of it — the animal references
neither the Kija nor HAR. That is why the extraction is clean rather than a rewrite, and why this
mod declares no dependency at all.

## What was changed

### `wildness` is a stat now, not a race field

```xml
<!-- before, in <race> -->
<wildness>0.50</wildness>

<!-- after, in <statBases> -->
<Wildness>0.50</Wildness>
```

In 1.6 `wildness` left `RaceProperties` and became a `Wildness` **StatDef**. The old field is not
an error, it is simply not read: the value falls back to the stat's default. Ludeon set that
default to `-1`, outside the `[0, 1]` the game actually uses, precisely so an animal that lost its
value is conspicuous rather than quietly tame. The teshi is a manhunter-prone predator with a
health scale of 4; taming it for free is not a cosmetic difference.

### The unfertilized egg was written

`Races_Animal_Teshi.xml` declared `eggFertilizedDef` and nothing else. Every egg-laying animal in
Core declares both — chicken, duck, goose, turkey, ostrich, emu, cassowary, cobra, tortoise,
iguana — so the teshi was the exception, not the rule.

Is it reachable? Less than this section used to say. The comp reads, upstream's values untouched:

```xml
<eggFertilizationCountMax>1</eggFertilizationCountMax>
<eggCountRange>2</eggCountRange>
<eggProgressUnfertilizedMax>0.9</eggProgressUnfertilizedMax>
```

Read in the compiled game (`CompEggLayer.ProduceEgg`, `NextEggType`, `CompTick`, `CanLayNow`), and still to
be confirmed in game by the Pickle scenario `03-laying-and-hatching`:

- one laying is **one stack** of `eggCountRange` eggs, not two separate eggs. It is made entirely of the
  fertilized def while a fertilization is left, and entirely of the unfertilized def otherwise;
- the teshi has one fertilization and lays two, so a mated female lays a stack of two fertilized eggs,
  uses up her fertilization, and does not lay again until she is mated;
- a female with no fertilization left is pinned at 0.9 by `CompTick` while `CanLayNow` wants 1, so she
  does not lay at all. That covers the lone female.

So in normal play a teshi never lays the unfertilized egg. The def is reached by one route only: the
dev-mode gizmo that sets `eggProgress` to 1, where `ProduceEgg` on a female with no fertilization left
asks for it. It stays for parity with every other egg-layer in Core, and it is harmless.

`EggTeshiUnfertilized` is a new def on `EggUnfertBase`, carrying the market value of the fertilized
egg (125) and the same near-white tint, so the pair reads as one animal's eggs. It is the only def
in this mod that is not Shooki's.

**What this section used to claim, and should not have.** Two things, one after the other. First that
`CompEggLayer` throws whenever an animal lays without having been fertilized, quoting the call that builds
the egg. The call is real; the certainty was not. The 1.6 port of Race to the Rim found that branch
unreachable for animals whose `eggProgressUnfertilizedMax` sits below 1 — theirs was 0.5, and the teshi's is
0.9 — because progress stops short of a laying and `CanLayNow` never comes true.
`_tools/Run-Functional-Tests.ps1` now confirms that from the game: it reads `CompTick` writing
`eggProgressUnfertilizedMax` into `eggProgress` while the animal is unfertilized, and `CanLayNow`
requiring a full 1.

Then that a mated female lays one fertilized and one unfertilized egg, "the second egg has nothing to be
but unfertilized". That was inferred from `eggCountRange` 2 and one fertilization, and never read off
`ProduceEgg`, which builds a single stack. It was wrong on the reading above.

### An optional integration, written here

`Patches/ADS2_Categories.xml` is new and is not from the original. It follows the convention of
**A Dog Said... Animal Prosthetics 2** by SamBucher
([Workshop 3238353862](https://steamcommunity.com/sharedfiles/filedetails/?id=3238353862),
[repository](https://github.com/SamuelBucher/A-Dog-Said-Animal-Prosthetics-2)): the mod lists the animals that
may receive prostheses in the abstract recipe categories `ADS_Cat1`, `ADS_Cat2` and `ADS_Cat3`, and its page asks
any mod that builds compatibility in to load before it. Only those names and that rule are used; no def, code or
asset of that mod is copied. The mod is not a dependency: `About.xml` names it in `loadBefore` only.

### Nothing else

No balance value was touched. No stat, no biome weight, no combat power, no life stage, no
texture. `Bodies_Animal_Teshi.xml` needed no change: `BipedAnimalWithClawsAndTail` is declared by
this mod and used by nothing else in it.

## Known limitation, inherited and left alone

The teshi's **dessicated corpse borrows the dromedary's texture** at three different draw sizes.
That was Shooki's choice and it is still the only dessicated art the mod has; inventing a
replacement would make this a rewrite rather than an update.

## Verification

The standalone `_tools/Run-Functional-Tests.ps1` suite provides 21 automated checks,
including XML parsing, Core references and inheritance, field existence and readers,
egg behavior constraints, body coverage and texture paths. It uses installed Core data
and reflection/IL inspection of RimWorld 1.6 assemblies. It does not launch or simulate
the game. The successful run and its exact scope are recorded in `STATUS.md`.

`TESTING.md` describes the in-game validation, including rendering, laying, hatching and the
dessicated corpse. The Pickle suite in `Tests/Pickle/` played most of those scenarios on 2026-09-24
and 2026-09-25, and `STATUS.md` records what it found and what is still to be validated.

## Showcase artwork

The showcase icon is AI-generated artwork, separate from the nine inherited animal
textures. On 2026-09-13, the built-in OpenAI image tool edited it to remove luminous
rings and sparkles while preserving the orange winking mascot. The previous icon,
new source and edit prompt are retained under `Art/`.
