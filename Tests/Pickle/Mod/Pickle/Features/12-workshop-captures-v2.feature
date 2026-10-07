# SECOND SERIES for the Workshop page (docs/GALLERY-V2.md): the steps and props are prepared, nothing here has been played.
# No count limit, only a size one: the whole gallery under 8 MB and each image under 2 MB (JPEG, quality 92, about 350 KB each).
#
# THE RULES (PUBLISHING.md): one story, not a row of captures; the sanctuary is the only common set; a Scenario is an image; menus
# are plain screenshots; and the TIME FLOWS through the series: one start hour (16h), then each image waits a cumulative time
# (rhythm chosen by the author: 30 game minutes, 1 250 ticks). Every Scenario reloads the save, so each one sets 16h again and
# waits its own total before the picture; what lives in the scene is placed after the wait so it has not left the frame.
#
# THE STORY: a late afternoon and an evening of the teshi in Nelim's sanctuary. The teshi is crepuscular (awake at dawn and at
# dusk): it rests by day and wakes as the light goes. The hours are those of the game's clock.
#   1. 16h00. The teshi asleep on a large animal bed on the west bank of the pond, in daylight.
#   2. 16h30. She is awake: a close portrait, the head, the four banded ears, the tail.
#   3. 17h00. The two parents nose to nose, the hearts, a lantern lit and a pot of flowers beside them.
#   4. 17h30. The mother and her nesting box in a bed of yellow grass, a lantern lit, the egg in the box.
#   5. 18h00. The egg hatches (the game's own hatching): the kit stands where it came out, the mother beside it.
#   6. 18h30. Nelim holds out a piece of meat to the kit, the mother watching.
#   7. 19h00, dusk, the Health tab: a cut claw and the ADS2 bionic arm together (needs ADS2, so the feature carries @requires).
#
# MODS, chosen for the props (both declare 1.6, both installed in the Windows Workshop folder, so the staging finds them by id):
#   Large Animal Beds (cucumpear.animalbeds, 1111387020): CCPLAnimalBed, a bed made for a large animal.
#   Stick Lantern (Continued) (Mlie.StickLantern, 2024351846): DR_StickLantern, a fuelled lantern that glows without power.
#
# OPEN POINTS, to read on the first run: whether CCPLAnimalBed accepts the placement and its stuff, whether the sleeper lies on it,
# whether EggBox takes a teshi egg placed on its cell, where the kit appears when it hatches, how Nelim reads holding meat, and
# whether ultrafast waits of up to 7 560 ticks fit the run (the suite may need @slow and a timeout). Filter: any ticket on a pass
# other than wsl-deps.sanctuary.map excludes this suite (`!12-workshop-captures-v2`), as it does 11-workshop-captures.
@review @slow @timeout:1800 @requires:SamBucher.ADogSaidAnimalProsthetics2
Feature: the images of the Workshop page, second series

  Background:
    Given the save "Nelims-tribe" is loaded
    And I set the weather to "Clear"

  # Image 1, 16h00: the teshi asleep on a large animal bed, on the west bank.
  Scenario: 16h00, the teshi sleeps on a large animal bed on the west bank of the pond
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 60 ticks
    And game speed is paused
    And Nelim's Pickle Tools: I am at the sanctuary "water-garden"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "water-garden"
    And Nelim's Pickle Tools: I place the decor "CCPLAnimalBed" at (153, 172)
    And Teshi Renew: a female adult teshi belonging to the colony stands at (153, 172)
    And Teshi Renew: the female adult teshi lies down to sleep
    When Teshi Renew: the camera looks at (153, 172) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop2-1-asleep"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 2, 16h30: awake, a close portrait.
  Scenario: 16h30, the teshi awake, a close portrait by the pond
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 1310 ticks
    And game speed is paused
    And Nelim's Pickle Tools: I am at the sanctuary "water-garden"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "water-garden"
    And Teshi Renew: a female adult teshi belonging to the colony stands at (153, 172)
    When Teshi Renew: the camera looks at (153, 172) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 1.8
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop2-2-awake-portrait"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 3, 17h00: the parents, nose to nose, hearts, a lit lantern and a pot of flowers.
  Scenario: 17h00, the parents nose to nose by a lit lantern and a pot of flowers
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 2560 ticks
    And game speed is paused
    And Nelim's Pickle Tools: I am at the sanctuary "water-garden"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "water-garden"
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (156, 171)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (156, 171) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 173) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 174) fully grown
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

  # Image 4, 17h30: the mother at her nesting box in the yellow grass, the egg in it.
  Scenario: 17h30, the mother at her nesting box with the egg in it
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 3810 ticks
    And game speed is paused
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
    And Teshi Renew: a female adult teshi belonging to the colony stands at (215, 185)
    And Teshi Renew: a "EggTeshiFertilized" lies at (217, 185)
    When Teshi Renew: the camera looks at (216, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop2-4-the-nesting-box"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 5, 18h00: the egg hatches by the game's own hatcher, the kit where it came out, the mother beside it.
  Scenario: 18h00, the egg hatches and the kit stands beside its mother
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 5060 ticks
    And game speed is paused
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
    And Teshi Renew: a female adult teshi belonging to the colony stands at (215, 185)
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

  # Image 6, 18h30: Nelim holds out a piece of meat to the kit, the mother watching.
  Scenario: 18h30, Nelim holds out a piece of meat to the kit while the mother watches
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 6310 ticks
    And game speed is paused
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (213, 186)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (213, 186) is lit
    And Teshi Renew: a female kit teshi stands at (210, 185)
    And Teshi Renew: a female adult teshi belonging to the colony stands at (212, 184)
    And Nelim's Pickle Tools: "Nelim" stands at (208, 185) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (236, 226, 200)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 80, 62)
    And Teshi Renew: the colonist "Nelim" carries 1 "Meat_Chicken"
    When Teshi Renew: the camera looks at (210, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2.2
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop2-6-the-first-meal"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 7, 19h30: the tea-house is the animal infirmary, and the Health tab is opened on the patient there (one image for both:
  # the injured teshi on its bed, Nelim at its feet, the tab showing the cut claw and the ADS2 bionic arm). A menu on a staged
  # scene: the interface stays, so the colonist bar, the learning helper and the tooltips are hidden.
  Scenario: 19h30, in the tea-house infirmary the health tab of the injured teshi is open
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 8810 ticks
    And game speed is paused
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: I am at the sanctuary "hut"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "hut"
    And Nelim's Pickle Tools: I place the decor "CCPLAnimalBed" at (141, 72)
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (143, 73)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (143, 73) is lit
    And Teshi Renew: a female adult teshi belonging to the colony stands at (141, 72)
    And Teshi Renew: the female adult teshi lies down to sleep
    And Nelim's Pickle Tools: "Nelim" stands at (141, 70) facing North
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (244, 242, 234)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (110, 96, 78)
    When Teshi Renew: the camera looks at (141, 71) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2.8
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
    And I take a screenshot "workshop2-7-the-infirmary-health-tab"
    And Teshi Renew: the camera's zoom limits are restored
    And Nelim's Pickle Tools: developer mode is restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
