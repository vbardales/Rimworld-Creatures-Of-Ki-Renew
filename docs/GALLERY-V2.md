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

## The images

| # | Moment | Corner | What the animals do | Props | Steps |
| --- | --- | --- | --- | --- | --- |
| 1 | dawn | pond, west bank | one teshi alone, the water behind her | none | exist |
| 2 | late afternoon | pond, west bank | the parents, nose to nose, hearts | `StandingLampColored` lit, `PlantPot` | exist |
| 3 | evening | bare earth east of the calm square | the mother in a nesting box lined with hay, two eggs | `EggBox`, `Hay`, `Brazier` lit | exist; check that `EggBox` takes the egg |
| 4 | evening | same earth | the eggs hatch, the kits at the shells | `EggBox`, `Brazier` | exist (`the eggs on the map are one tick from hatching`, `I wait for the eggs to hatch`) |
| 5 | evening | same earth | the mother brings the kit meat | `AnimalBed`, `Brazier` | exist |
| 6 | evening | same earth | Nelim kneels and hand-feeds the kit | `Brazier` | **missing**: a colonist posed holding meat |
| 7 | noon | pond, west bank | the teshi asleep in the sun, then image 2's dusk awake: the crepuscular rhythm | none | **missing**: an animal ordered to lie down; needs Nocturnal Animals in the pass |
| 8 | dusk | pond, west bank | a close-up of the head, four ears, banded tail | `TorchLamp` | exist (`the camera root size is set to 1.5`) |
| 9 | dusk | north clearing | Health tab, a cut claw | none, a menu | exist |
| 10 | dusk | north clearing | Health tab, the ADS2 bionic arm | none, a menu | exist |

Optional, not planned: a collar from Animal Apparel Collars on the mother (`AnimalApparelCollarsAndKitRenew` has the steps
`is dressed in`; whether it dresses a teshi at all is unknown, its patches target other bodies).

## Missing steps to write (in this suite, `Tests/Pickle/Source/TeshiSteps.cs`, as the heart and the carried meat were)

- A colonist posed holding a thing and facing an animal: `Nelim carries 1 "Meat_Chicken"` (colonist, any pawn kind).
- An animal asleep: lie the pawn down in a bed or on the ground with a lasting `LayDown` job and the drawn "Z", or tell
  PickleTools if their Elsewhere notes (`DrumBathHygiene.md`) already cover it for animals. Read what they say about
  `TryTakeOrderedJob` returning true for a job that ends inside StartJob before ordering one.
- A forced hatching is the game's own (`gestateProgress` to 0.9999, then a wait); no new step.

## Skeleton of the evening scenarios (Gherkin, to adapt, never run)

```gherkin
  # 3, evening: nesting box, hay, two eggs, the mother
  Scenario: evening, the mother in her nesting box with the two eggs
    Given I set the hour to 19
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I place the decor "EggBox" at (216, 185)
    And Nelim's Pickle Tools: I place the decor "Brazier" at (213, 186)
    And Nelim's Pickle Tools: the decor "Brazier" at (213, 186) is lit
    And Teshi Renew: a female adult teshi belonging to the colony stands at (215, 185)
    And Teshi Renew: a "EggTeshiFertilized" lies at (216, 185)

  # 4, evening: the hatching, the real one
  Scenario: evening, the eggs hatch in the nesting box
    # same set as 3, then:
    When Teshi Renew: the eggs on the map are one tick from hatching
    And Teshi Renew: I wait for the eggs to hatch
```

## Before anything is played

Choose the mods (none is required by the first series), add them to one pass map with the sanctuary and ADS2, read the empty
photographs again for each corner, and send PickleTools any anomaly with the capture before a ticket is filed again
(`PUBLISHING.md`). Props from a mod are named in the Steam description's thanks, and the description says that nothing staged is
shipped with the mod.
