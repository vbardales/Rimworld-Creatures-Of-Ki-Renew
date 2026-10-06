# Gallery, second series: scenarios prepared, not played (2026-10-06)

The six images of 2026-10-06 are on Steam. This is the plan for a richer series if the owner opens the full toolbox (vanilla
props, DLC, mods). Nothing here is under `Tests/`: no scenario is committed until its steps exist and its mods are chosen, so
no `@wip` scenario sits in a tested repository. The first series is `Tests/Pickle/Mod/Pickle/Features/11-workshop-captures.feature`.

## The idea

One evening of the teshi in Nelim's sanctuary, told in behaviours: the same story as the first series, with props that make
each picture read at once, and three things the first series did not show (a person with the animal, the hatching, the
crepuscular rhythm).

## Props checked in the game's Defs (vanilla, no mod)

`EggBox` (the nesting box), `AnimalBed`, `Hay`, `Brazier`, `Campfire`, `StandingLamp`, `StandingLampColored`, `TorchLamp`,
`PlantPot`, `Sandbags`, `SleepingSpot`, `Plant_YellowTallGrass`, `Meat_Chicken` (generated at load from the chicken race),
`EggTeshiFertilized` (this mod). Not checked in a picture yet: how each one reads at root size 3, nor whether `EggBox` takes a
teshi egg stack.

## The images (seven; no count limit, but the whole under 8 MB and each image under 2 MB, owner 2026-10-06)

Written in `Tests/Pickle/Mod/Pickle/Features/12-workshop-captures-v2.feature` (resolved by `Check-Steps.ps1`, never played).

| # | Moment | Corner | What the animals do | Props |
| --- | --- | --- | --- | --- |
| 1 | dawn | pond, west bank | a close portrait: the head, four ears, banded tail | none |
| 2 | noon | pond, west bank | the teshi asleep in the sun (LayDown job), the crepuscular animal at rest | `CCPLAnimalBed` |
| 3 | late afternoon | pond, west bank | the parents nose to nose, the hearts | `DR_StickLantern` lit, `PlantPot` |
| 4 | evening | bare earth east of the calm square | the mother at her nesting box, the egg in it | `EggBox`, `CCPLAnimalBed`, yellow grass, `DR_StickLantern` lit |
| 5 | evening | same earth | the egg hatches (the game's own hatcher), the kit stands beside the mother | same set |
| 6 | evening | same earth | Nelim holds out meat to the kit, the mother watching | `DR_StickLantern` lit |
| 7 | dusk | north clearing | the Health tab: a cut claw and the ADS2 bionic arm together | a menu, none |

The collar of Animal Apparel Collars stays optional and unchecked. The sleeping image needs a new step (`the female adult teshi lies down to sleep`, the game's `LayDown` job, never played); with Nocturnal Animals in the pass it would also be the mod's own rhythm, but the picture does not need that mod.

## Mods chosen (owner, 2026-10-06: any mod, not only hers)

Both declare 1.6 and sit in the Windows Workshop folder, so the staging finds them by id; `wsl-deps.sanctuary.map` lists them.

- **Large Animal Beds** (`cucumpear.animalbeds`, 1111387020): `CCPLAnimalBed`, under the sleeper (image 2) and the mother (images 4, 5).
- **Stick Lantern (Continued)** (`Mlie.StickLantern`, 2024351846; original by DR): `DR_StickLantern`, a fuelled lantern that glows without power; it replaces the vanilla standing lamp (which needs power) and the brazier. If the gallery ships with them, the Steam description and its thanks name them and say that nothing staged is shipped with the mod; Mlie and the author of Large Animal Beds are thanked in the register `WORKSHOP_COMMENTS.md`.

## Steps

All exist. Written for this series in `Tests/Pickle/Source/TeshiSteps.cs`: the mating hearts, the teshi carrying a thing, the colonist carrying a thing, and the teshi lying down (`the colonist "Nelim" carries 1 "Meat_Chicken"`). `"Nelim" stands at (x, z) facing East` is
ColonistRace's (PickleTools); `wsl-deps.sanctuary.map` now holds it. A forced hatching is the game's own: the egg is set one
tick from hatching, the speed is raised for the wait and paused again for the picture.

## Open points for the first run

Whether `EggBox` takes an egg placed on its cell; where the kit appears when it hatches; how Nelim reads standing and holding
meat; whether a brazier and a coloured lamp tint the animals. A run that fails here means the set changes, not the suite.

## Before anything is played

Choose the mods (none is required by the first series), add them to one pass map with the sanctuary and ADS2, read the empty
photographs again for each corner, and send PickleTools any anomaly with the capture before a ticket is filed again
(`PUBLISHING.md`). Props from a mod are named in the Steam description's thanks, and the description says that nothing staged is
shipped with the mod.
