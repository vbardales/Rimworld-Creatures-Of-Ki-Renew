# SECOND SERIES for the Workshop page (docs/GALLERY-V2.md). Played and read: the last run is 3c32 (2026-10-08), all seven images.
# No count limit, only a size one: the whole gallery under 8 MB and each image under 2 MB (JPEG, quality 92, about 350 KB each).
#
# THE RULES (PUBLISHING.md): one story, not a row of captures; the Sanctuary is the only common set; a Scenario is an image; the
# Health tab is a menu, so it keeps the interface; and the TIME FLOWS through the series: one start hour (16h), then each image waits
# a cumulative time (rhythm chosen by the author: 30 game minutes, 1 250 ticks). Every Scenario reloads the save, so each one sets 16h
# again and waits its own total before the picture; what lives in the scene is placed after the wait so it has not left the frame.
#
# THE STORY: a late afternoon and an evening of the teshi in Nelim's Sanctuary. The teshi is crepuscular (awake at dawn and at dusk):
# it rests by day and wakes as the light goes. The hours are the game's clock.
#
# SHOOTING PLAN (place, moment, subject, composition, the living, what the image says). Places chosen on PickleTools' empty-place
# photographs (SanctuaryBacklot/docs/SANCTUAIRE-LIEUX.md), among all of them: water-garden, calm-zone and hut; the enclosure and the
# sleeping-nook were seen and left (fenced and indoors, they say "kept animal", not a forest creature that nests and wakes at dusk).
#   1. water-garden, west bank. 16h00. The teshi asleep on a prestige animal bed. Wide-ish frame, the pond behind, the bed to the right of the
#      subject. Nelim is not in it; the pond's lily pads are the life. Says: by day it sleeps, curled, in daylight.
#   2. water-garden, same bank. 16h30. The teshi awake, a close portrait (root size 1.8), centred. Says: the head, the four banded ears, the tail.
#   3. water-garden, same bank. 17h00. The two parents nose to nose, hearts, a lit lantern at the bank's edge, daylily pots in the upper left.
#      Composition off-centre to the left, the lantern bottom-right. Says: the courting, at the start of the dusk.
#   4. calm-zone, east of the cream square. 17h30. The mother on her bed in a nest of yellow tall grass, the egg in its box, a lantern at left.
#      Close and low. Says: she builds the nest as the light goes.
#   5. calm-zone, same corner. 18h00. The egg has hatched by the game's own hatcher: the kit by the box, the mother back on her bed. Says: it is born at dusk.
#   6. calm-zone, west of the nest. 18h30. Nelim (dressed, brown eyes, smiling) holds out a piece of meat; the kit leaps toward her, the mother
#      watches at the right, the lantern top-right. Says: the first meal, and that the teshi lives with people.
#   7. hut (the tea-house turned into an animal infirmary). 19h30. The injured teshi asleep on a big animal bed, Nelim at its feet, two blue braziers
#      and a lantern, the Health tab open on the patient (a cut claw and the ADS2 bionic arm; needs ADS2, so the feature carries @requires).
#      A menu on a staged scene: the interface stays, the colonist bar, learning helper and tooltips are hidden. Says: the body names each claw and ear,
#      and the mod's integration gives it a bionic arm.
# After a run each image is read against this plan, and the one that does not say what it should is redone, not only the one that crashes.
#
# MODS, chosen for the props and for Nelim; each in the pass map wsl-deps.sanctuary.map (see also GALLERY-PROPS.md at the root of the monorepo):
#   More animal beds (Animal.BedsNew, 3107972819): GSAnimalBedBigPrestige (images 1, 4, 5) and GSAnimalBedBig (image 7), both 2x2.
#   Stick Lantern (Continued) (Mlie.StickLantern, 2024351846): DR_StickLantern, a fuelled lantern that glows without power.
#   Nelim: Female Body/Apparel Variants, Realistic Bodies (WDI), AB's Visible Pants, Venus Touch Waistlines, Nals Facial Animation with EyeGenes3 for the
#   brown eyes; all through the SanctuaryBacklot map (steps "Nelim's Sanctuary: ..." for the places, "Nelim's Pickle Tools: ..." for the rest).
# Filter: any ticket on a pass other than wsl-deps.sanctuary.map excludes this suite (`!12-workshop-captures-v2`), as it does 11-workshop-captures.
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
    And Nelim's Sanctuary: I am at the sanctuary "water-garden"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "water-garden"
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (153, 172)
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
    And Nelim's Sanctuary: I am at the sanctuary "water-garden"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "water-garden"
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
    And Nelim's Sanctuary: I am at the sanctuary "water-garden"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "water-garden"
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
    And Nelim's Sanctuary: I am at the sanctuary "calm-zone"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "calm-zone"
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
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (215, 185)
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
    And Nelim's Sanctuary: I am at the sanctuary "calm-zone"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "calm-zone"
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
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (213, 186)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (213, 186) is lit
    And Teshi Renew: a "EggTeshiFertilized" lies at (217, 185)
    When Teshi Renew: the eggs on the map are one tick from hatching
    And game speed is ultrafast
    And Teshi Renew: I wait for the eggs to hatch
    And game speed is paused
    And Teshi Renew: a female adult teshi belonging to the colony stands at (215, 185)
    And Teshi Renew: I let 10 frames pass
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
    And Nelim's Sanctuary: I am at the sanctuary "calm-zone"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (213, 186)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (213, 186) is lit
    And Teshi Renew: a female kit teshi stands at (210, 185)
    And Teshi Renew: a female adult teshi belonging to the colony stands at (212, 184)
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (208, 185) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (236, 226, 200)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (96, 80, 62)
    And Nelim's Pickle Tools: "Nelim" eye colour is rgb (92, 58, 36)
    And Nelim's Pickle Tools: "Nelim" facial expression is "SocialRelax"
    And Nelim's Pickle Tools: I let 20 ticks pass
    And Nelim's Pickle Tools: "Nelim" stands at (208, 185) facing East
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
    And Nelim's Sanctuary: I am at the sanctuary "hut"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "hut"
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBig" at (141, 72)
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (143, 73)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (143, 73) is lit
    And Teshi Renew: a female adult teshi belonging to the colony stands at (141, 72)
    And Teshi Renew: the teshi is given a "Cut" on its "front left claw"
    And Teshi Renew: the female adult teshi lies down to sleep
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (141, 70) facing North
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (244, 242, 234)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (110, 96, 78)
    And Nelim's Pickle Tools: "Nelim" eye colour is rgb (92, 58, 36)
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And Nelim's Pickle Tools: I let 20 ticks pass
    And Nelim's Pickle Tools: "Nelim" stands at (141, 70) facing North
    When Teshi Renew: the camera looks at (139, 70) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3.4
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the tooltips are hidden
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
