# Images for the Workshop page, staged as a series (PUBLICATION.md, "Captures for the Workshop page").
#
# THE RULE (owner, 2026-10-02): a gallery capture is a staged photograph, except menus. Nothing stays at the game's
# defaults. A short story ties the series, one set links the images, and each picture has a subject whose every
# detail matches what it shows. Menus and interface windows (the health tab) are screenshots of what they are and
# are not staged.
#
# THE STORY: dusk in the daylily meadow. A mother teshi keeps her nest, a ring of hay on the orange flowers with a
# lit torch at its corner. First she is alone and calm; then her kit sleeps beside the egg she laid (the mod's
# "and its eggs"); last, the health tab shows what the mod gives the animal, a body that names each claw and ear.
#
# THE SET, the same in the first two images: the 3x3 orange daylily patch, seven cells of hay around the animal, the
# torch at (-2, +2) from the patch, the egg at (+1, 0). The camera sits on the patch at the same distance in both, so
# the background does not move from one picture to the next. The set is spawned fresh in each scenario, so nothing
# needs removing between them; no animal is a colonist (nobody dresses or grooms a teshi), and the picture of the
# animal is the subject, not a pawn.
#
# THE PLACE is the owner's photographic colony `nelim-zen-meadow-studio` (PickleTools ScreenshotStudio), via
# wsl-deps.studio.map: a studio pass of its own. Search for the orange patch: the studio mixes dandelions, daylilies
# (`Plant_Daylily`) and roses at random per cell, so no fixed coordinate is one colour. History of the search is in
# `git log` of this file. None of the scenarios asserts a translated string.
@review
Feature: the images of the Workshop page

  Background:
    Given the save "nelim-zen-meadow-studio" is loaded
    And game speed is paused
    And I set the hour to 18
    And I set the weather to "Clear"
    And Teshi Renew: a 3x3 patch with at least 4 "Plant_Daylily" and no other flower is found near (170, 92)

  # Image 1: the mother at her nest, the subject alone in the set. Presentation mode hides the interface.
  Scenario: the teshi standing in the orange flower bed, framed close for the page
    Given Teshi Renew: the nest is set around the found patch
    And Teshi Renew: a female adult teshi belonging to the colony stands at the found patch
    When Teshi Renew: the camera looks at the found patch at zoom 6
    And Teshi Renew: I select the teshi
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-1-the-teshi"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 2: "and its eggs". The same set and the same camera distance as image 1, the kit where the mother stood,
  # the egg in the hay beside it.
  Scenario: a teshi kit beside a fertilized egg, on the orange flower bed
    Given Teshi Renew: the nest is set around the found patch
    And Teshi Renew: a female kit teshi stands at the found patch
    And Teshi Renew: a "EggTeshiFertilized" lies in the nest
    When Teshi Renew: the camera looks at the found patch at zoom 6
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-2-the-kit-and-the-egg"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 3: a menu, so a screenshot of what it is and not a staged scene (no nest): the health tab as a player
  # sees it, one claw injured. The interface stays, since the tab is the subject, so the letters and alerts a
  # fresh studio load carries are cleared first, and developer mode (the runner starts with it on) is turned off.
  Scenario: the health tab of an injured teshi, on the orange flower bed
    Given Teshi Renew: a female adult teshi stands at the found patch
    When Teshi Renew: the camera looks at the found patch at zoom 6
    And Teshi Renew: the teshi is given a "Cut" on its "front left claw"
    Then Teshi Renew: the teshi has a "Cut" on its "front left claw"
    When Teshi Renew: I select the teshi
    And Nelim's Pickle Tools: I open the "Health" inspect tab
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When Nelim's Pickle Tools: developer mode is turned off for the capture
    And Nelim's Pickle Tools: the letters and the alerts are cleared from the screen
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When I take a screenshot "workshop-3-the-health-tab"
    And Teshi Renew: the camera's zoom limits are restored
    And Nelim's Pickle Tools: developer mode is restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
