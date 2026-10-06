# SECOND SERIES for the Workshop page (docs/GALLERY-V2.md): the steps and props are prepared, nothing here has been played.
# The gallery has no count limit, only a size one: the whole under 8 MB and each image under 2 MB (JPEG, quality 92, about
# 350 KB each). The sanctuary is the only common set, each image has its own corner, props and hour. Menus are plain screenshots.
#
# THE STORY: the teshi is crepuscular, awake at dawn and at dusk, so the images show what it does when the light goes.
#   1. Dawn. A close portrait by the pond: the head, the four banded ears, the tail.
#   2. Noon. The teshi sleeps in the sun on the bank, the crepuscular animal at rest (the game's LayDown job).
#   3. Late afternoon. The two parents nose to nose, the hearts, a coloured lamp lit and a pot of flowers beside them.
#   4. Evening. The mother and her nesting box in a bed of yellow grass, a brazier lit, the egg in the box.
#   5. Evening again. The egg hatches (the game's own hatching): the kit stands where it came out, the mother beside it.
#   6. Evening. Nelim kneels by the kit and holds out a piece of meat, the mother watching.
#   7. Dusk, the Health tab: a cut claw and the ADS2 bionic arm together (needs ADS2, so the feature carries @requires).
#
# MODS, chosen for the props (both declare 1.6, both installed in the Windows Workshop folder, so the staging finds them by id):
#   Large Animal Beds (cucumpear.animalbeds, 1111387020): CCPLAnimalBed, a bed made for a large animal, under the sleeper and the mother.
#   Stick Lantern (Continued) (Mlie.StickLantern, 2024351846): DR_StickLantern, a fuelled lantern that glows without power.
#
# OPEN POINTS, to read on the first run: whether CCPLAnimalBed accepts the placement and its stuff, whether the sleeper lies on it, whether EggBox takes a teshi egg placed on its cell, whether the hatched kit stays on
# the cell beside the box, how Nelim reads when she stands holding meat. Filter: any ticket on a pass other than
# wsl-deps.sanctuary.map excludes this suite (`!12-workshop-captures-v2`), as it does 11-workshop-captures.
@review @requires:SamBucher.ADogSaidAnimalProsthetics2
Feature: the images of the Workshop page, second series

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And I set the weather to "Clear"

  # Image 1, dawn: a portrait close enough to read the four ears and the banded tail.
  Scenario: dawn, a close portrait of the teshi by the pond
    Given I set the hour to 6
    And Nelim's Pickle Tools: I am at the sanctuary "water-garden"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "water-garden"
    And Teshi Renew: a female adult teshi belonging to the colony stands at (153, 172)
    When Teshi Renew: the camera looks at (153, 172) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 1.8
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop2-1-dawn-portrait"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 2, noon: the teshi asleep in the sun, the crepuscular animal at rest; the same bank as the dawn.
  Scenario: noon, the teshi sleeps in the sun on the west bank of the pond
    Given I set the hour to 12
    And Nelim's Pickle Tools: I am at the sanctuary "water-garden"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "water-garden"
    And Nelim's Pickle Tools: I place the decor "CCPLAnimalBed" at (153, 172)
    And Teshi Renew: a female adult teshi belonging to the colony stands at (153, 172)
    And Teshi Renew: the female adult teshi lies down to sleep
    When Teshi Renew: the camera looks at (153, 172) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop2-2-asleep-at-noon"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 3, late afternoon: the parents, nose to nose, with the hearts, on the west bank.
  Scenario: late afternoon, the parents nose to nose by a lit lamp and a pot of flowers
    Given I set the hour to 17
    And Nelim's Pickle Tools: I am at the sanctuary "water-garden"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "water-garden"
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (156, 171)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (156, 171) is lit
    And Nelim's Pickle Tools: I place the decor "PlantPot" at (151, 173)
    And Teshi Renew: a female adult teshi belonging to the colony stands at (152, 172)
    And Teshi Renew: a male adult teshi belonging to the colony stands at (154, 172)
    When Teshi Renew: the camera looks at (153, 172) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3.5
    And Teshi Renew: the female adult teshi and the male adult teshi mate
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop2-3-the-parents"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 4, evening: the mother and her nesting box in the yellow grass, the egg in the box, a brazier lit.
  Scenario: evening, the mother at her nesting box with the egg in it
    Given I set the hour to 19
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (216, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (216, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 186)
    And Nelim's Pickle Tools: the plants from (214, 184) to (218, 186) are fully grown
    And Nelim's Pickle Tools: I place the decor "EggBox" at (217, 185)
    And Nelim's Pickle Tools: I place the decor "CCPLAnimalBed" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (213, 186)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (213, 186) is lit
    And Teshi Renew: a female adult teshi belonging to the colony stands at (216, 185)
    And Teshi Renew: a "EggTeshiFertilized" lies at (217, 185)
    When Teshi Renew: the camera looks at (216, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop2-4-the-nesting-box"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 5, evening again: the egg hatches by the game's own hatcher, the kit where it came out, the mother beside it.
  # The hatching needs ticks, so the speed is raised for it and the game is paused again before the picture.
  Scenario: evening, the egg hatches and the kit stands beside its mother
    Given I set the hour to 19
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (216, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (216, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 186)
    And Nelim's Pickle Tools: the plants from (214, 184) to (218, 186) are fully grown
    And Nelim's Pickle Tools: I place the decor "EggBox" at (217, 185)
    And Nelim's Pickle Tools: I place the decor "CCPLAnimalBed" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (213, 186)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (213, 186) is lit
    And Teshi Renew: a female adult teshi belonging to the colony stands at (216, 185)
    And Teshi Renew: a "EggTeshiFertilized" lies at (217, 185)
    When Teshi Renew: the eggs on the map are one tick from hatching
    And game speed is ultrafast
    And Teshi Renew: I wait for the eggs to hatch
    And game speed is paused
    And Teshi Renew: the camera looks at (216, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop2-5-the-hatching"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 6, evening: Nelim kneels by the kit and holds out a piece of meat, the mother watching.
  Scenario: evening, Nelim holds out a piece of meat to the kit while the mother watches
    Given I set the hour to 19
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (213, 186)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (213, 186) is lit
    And Teshi Renew: a female kit teshi stands at (211, 185)
    And Teshi Renew: a female adult teshi belonging to the colony stands at (214, 185)
    And Nelim's Pickle Tools: "Nelim" stands at (209, 185) facing East
    And Teshi Renew: the colonist "Nelim" carries 1 "Meat_Chicken"
    When Teshi Renew: the camera looks at (211, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop2-6-the-first-meal"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 7, dusk: a menu, so a screenshot of what it is. The Health tab with a cut claw and the ADS2 bionic arm together;
  # the interface stays, so the colonist bar, the learning helper and the tooltips are hidden.
  Scenario: dusk, the health tab of a teshi with a cut claw and a bionic arm
    Given I set the hour to 18
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: I am at the sanctuary "smiley-north"
    And Teshi Renew: a female adult teshi stands at (175, 200)
    When Teshi Renew: the camera looks at (175, 200) at zoom 6
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Teshi Renew: the teshi is given a "Cut" on its "front left claw"
    And Teshi Renew: the recipe "InstallBionicArmAnimal" is applied to the teshi's "right arm"
    Then Teshi Renew: the teshi has a "Cut" on its "front left claw"
    And Teshi Renew: the teshi's "right arm" carries the hediff "BionicArmAnimal"
    When Teshi Renew: I select the teshi
    And Nelim's Pickle Tools: I open the "Health" inspect tab
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: the letters and the alerts are cleared from the screen
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When Nelim's Pickle Tools: I move the mouse to (5, 5)
    And I take a screenshot "workshop2-7-the-health-tab"
    And Teshi Renew: the camera's zoom limits are restored
    And Nelim's Pickle Tools: developer mode is restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
