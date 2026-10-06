# Images for the Workshop page: one story told in six images (PUBLISHING.md, "La galerie raconte une seule histoire").
#
# THE RULE (owner, 2026-10-02 and 2026-10-06): a gallery capture is a staged photograph, except menus. Nothing stays at
# the game's defaults. The series is one story, not a row of captures; the only thing the images share is the sanctuary.
# Each image has its own corner of it and its own hour. Menus and interface windows are plain screenshots of what they
# are. A Scenario is one image: it lays its set, takes the picture, and StageDecor removes the set afterwards.
#
# THE STORY: a day of the teshi in Nelim's sanctuary.
#   1. Dawn. At the west bank of the pond a teshi stands alone, the water behind her: the animal, nothing else.
#   2. Morning. In the clearing of the bamboo, on Nelim's orange carpet, she keeps a nest of tall grass with the egg she
#      laid: "and its eggs".
#   3. Noon. The egg has hatched: a kit explores the bare earth east of the calm square, in full sun.
#   4. Dusk. She is back at the pond, awake as the light goes (the teshi is crepuscular with Nocturnal Animals), a torch lit.
#   5. Dusk, the health tab: what the mod gives the animal, a body that names each claw and ear (a cut on a claw).
#   6. Dusk, the same tab after an operation: ADS2's bionic arm, which the integration offers (needs ADS2, so this
#      scenario carries @requires and the pass map holds it).
#
# THE PLACES, chosen from the empty-place photographs of PickleTools (2026-10-06, midi, Clear, no animals, no interface):
#   water-garden: the west bank of the pond is brown earth (x 143-158, z 168-176, a burrow at (149, 173) to avoid), the
#     water to its east; the teshi stands on it at root size 4.
#   smiley-north: the band of plain orange carpet between the eyes and the mouth, centre (176, 202), cells z 199-201.
#   calm-zone: east of the cream square the earth is brown and plain (x 209-219, z 182-188), spiked with a few dry grasses.
# The fixture is saved at 23h, so each scenario sets the hour and the weather itself.
@review @requires:SamBucher.ADogSaidAnimalProsthetics2
Feature: the images of the Workshop page

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And I set the weather to "Clear"

  # Image 1, dawn: the teshi alone on the west bank of the pond. Presentation mode hides the interface.
  Scenario: dawn, the teshi stands alone on the west bank of the pond
    Given I set the hour to 6
    And Nelim's Pickle Tools: I am at the sanctuary "water-garden"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "water-garden"
    And Teshi Renew: a female adult teshi belonging to the colony stands at (153, 172)
    When Teshi Renew: the camera looks at (153, 172) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 4
    And Teshi Renew: I select the teshi
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-1-dawn"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 2, morning: the nest of tall grass in the north clearing, the egg beside her.
  Scenario: morning, the mother keeps her nest and the egg in the north clearing
    Given I set the hour to 9
    And Nelim's Pickle Tools: I am at the sanctuary "smiley-north"
    And Nelim's Pickle Tools: I place the decor "Plant_TallGrass" at (173, 200)
    And Nelim's Pickle Tools: I place the decor "Plant_TallGrass" at (174, 200)
    And Nelim's Pickle Tools: I place the decor "Plant_TallGrass" at (175, 200)
    And Nelim's Pickle Tools: I place the decor "Plant_TallGrass" at (176, 200)
    And Nelim's Pickle Tools: I place the decor "Plant_TallGrass" at (177, 200)
    And Nelim's Pickle Tools: I place the decor "Plant_TallGrass" at (173, 201)
    And Nelim's Pickle Tools: I place the decor "Plant_TallGrass" at (174, 201)
    And Nelim's Pickle Tools: I place the decor "Plant_TallGrass" at (176, 201)
    And Nelim's Pickle Tools: I place the decor "Plant_TallGrass" at (177, 201)
    And Nelim's Pickle Tools: the plants from (173, 200) to (177, 201) are fully grown
    And Teshi Renew: a female adult teshi belonging to the colony stands at (175, 201)
    And Teshi Renew: a "EggTeshiFertilized" lies at (176, 201)
    When Teshi Renew: the camera looks at (175, 201) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-2-the-nest"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 3, noon: the kit on the bare earth east of the calm square.
  Scenario: noon, the kit explores the bare earth east of the calm square
    Given I set the hour to 12
    And Nelim's Pickle Tools: I am at the sanctuary "calm-zone"
    And Teshi Renew: a female kit teshi stands at (211, 185)
    When Teshi Renew: the camera looks at (211, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-3-the-kit"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 4, dusk: back at the pond, a torch lit on the bank, the light going.
  Scenario: dusk, the teshi is back at the pond with a torch lit on the bank
    Given I set the hour to 18
    And Nelim's Pickle Tools: I am at the sanctuary "water-garden"
    And Nelim's Pickle Tools: the animals are removed from the sanctuary "water-garden"
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (155, 172)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (155, 172) is lit
    And Teshi Renew: a female adult teshi belonging to the colony stands at (153, 171)
    When Teshi Renew: the camera looks at (153, 171) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 4
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-4-dusk"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 5, night: a menu, so a screenshot of what it is and not a staged scene: the health tab as a player sees it, one
  # claw injured. The interface stays, so the colonist bar and the learning helper are hidden, the letters and alerts a
  # fresh load carries are cleared, and developer mode (the runner starts with it on) is turned off.
  Scenario: dusk, the health tab of an injured teshi
    Given I set the hour to 18
    And Nelim's Pickle Tools: I am at the sanctuary "smiley-north"
    And Teshi Renew: a female adult teshi stands at (175, 200)
    When Teshi Renew: the camera looks at (175, 200) at zoom 6
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Teshi Renew: the teshi is given a "Cut" on its "front left claw"
    Then Teshi Renew: the teshi has a "Cut" on its "front left claw"
    When Teshi Renew: I select the teshi
    And Nelim's Pickle Tools: I open the "Health" inspect tab
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: the letters and the alerts are cleared from the screen
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When Nelim's Pickle Tools: I move the mouse to (5, 5)
    And I take a screenshot "workshop-5-the-health-tab"
    And Teshi Renew: the camera's zoom limits are restored
    And Nelim's Pickle Tools: developer mode is restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 6, night: the same tab after an operation, ADS2's bionic arm on the right arm (the integration of the page).
  Scenario: dusk, the health tab of a teshi with a bionic arm from ADS2
    Given I set the hour to 18
    And Nelim's Pickle Tools: I am at the sanctuary "smiley-north"
    And Teshi Renew: a female adult teshi stands at (175, 200)
    When Teshi Renew: the camera looks at (175, 200) at zoom 6
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Teshi Renew: the recipe "InstallBionicArmAnimal" is applied to the teshi's "right arm"
    Then Teshi Renew: the teshi's "right arm" carries the hediff "BionicArmAnimal"
    When Teshi Renew: I select the teshi
    And Nelim's Pickle Tools: I open the "Health" inspect tab
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: the letters and the alerts are cleared from the screen
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When Nelim's Pickle Tools: I move the mouse to (5, 5)
    And I take a screenshot "workshop-6-the-bionic-arm"
    And Teshi Renew: the camera's zoom limits are restored
    And Nelim's Pickle Tools: developer mode is restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
