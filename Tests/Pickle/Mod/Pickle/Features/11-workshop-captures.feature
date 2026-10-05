# Images for the Workshop page, staged as a series (PUBLICATION.md, "Captures for the Workshop page").
#
# THE RULE (owner, 2026-10-02): a gallery capture is a staged photograph, except menus. Nothing stays at the game's
# defaults. A short story ties the series, one set links the images, and each picture has a subject whose every
# detail matches what it shows. Menus and interface windows (the health tab) are screenshots of what they are and
# are not staged.
#
# THE STORY: dusk on the sanctuary's podium. A mother teshi keeps her nest, a ring of hay on bare earth with a lit
# torch at its corner. First she is alone and calm; then her kit sleeps beside the egg she laid (the mod's "and its
# eggs"); last, the health tab shows what the mod gives the animal, a body that names each claw and ear.
#
# THE SET, the same in the first two images: StageDecor places seven cells of hay around the animal and a torch at
# the nest's corner, the egg lies in the hay beside it, and the camera sits on the same cell at the same zoom, so the
# background does not move from one picture to the next. StageDecor removes the set after every scenario. No animal is
# a colonist: nobody dresses or grooms a teshi, the animal is the subject, not a pawn.
#
# THE PLACE (PickleTools, 2026-10-05): Nelim's tribe, the sanctuary, fixture `Nelims-tribe` through
# wsl-deps.sanctuary.map. The podium (named frame "podium", centre (197, 152), the free 14 x 14 square of bare earth)
# is the stage. The fixture is saved at noon, so the series sets the hour and the weather itself.
@review
Feature: the images of the Workshop page

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And I set the hour to 18
    And I set the weather to "Clear"
    And Nelim's Pickle Tools: I am at the sanctuary "podium"

  # Image 1: the mother at her nest, the subject alone in the set. Presentation mode hides the interface.
  Scenario: the teshi standing at her nest on the podium, framed close for the page
    Given Nelim's Pickle Tools: I place the decor "Hay" at (196, 152)
    And Nelim's Pickle Tools: I place the decor "Hay" at (198, 152)
    And Nelim's Pickle Tools: I place the decor "Hay" at (197, 151)
    And Nelim's Pickle Tools: I place the decor "Hay" at (197, 153)
    And Nelim's Pickle Tools: I place the decor "Hay" at (196, 153)
    And Nelim's Pickle Tools: I place the decor "Hay" at (198, 153)
    And Nelim's Pickle Tools: I place the decor "Hay" at (198, 151)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (195, 154)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (195, 154) is lit
    And Teshi Renew: a female adult teshi belonging to the colony stands at (197, 152)
    When Teshi Renew: the camera looks at (197, 152) at zoom 6
    And Teshi Renew: I select the teshi
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-1-the-teshi"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 2: "and its eggs". The same set and the same camera as image 1, the kit where the mother stood, the egg in
  # the hay beside it.
  Scenario: a teshi kit beside a fertilized egg, in the nest on the podium
    Given Nelim's Pickle Tools: I place the decor "Hay" at (196, 152)
    And Nelim's Pickle Tools: I place the decor "Hay" at (198, 152)
    And Nelim's Pickle Tools: I place the decor "Hay" at (197, 151)
    And Nelim's Pickle Tools: I place the decor "Hay" at (197, 153)
    And Nelim's Pickle Tools: I place the decor "Hay" at (196, 153)
    And Nelim's Pickle Tools: I place the decor "Hay" at (198, 153)
    And Nelim's Pickle Tools: I place the decor "Hay" at (198, 151)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (195, 154)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (195, 154) is lit
    And Teshi Renew: a female kit teshi stands at (197, 152)
    And Teshi Renew: a "EggTeshiFertilized" lies at (198, 152)
    When Teshi Renew: the camera looks at (197, 152) at zoom 6
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-2-the-kit-and-the-egg"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 3: a menu, so a screenshot of what it is and not a staged scene (no nest): the health tab as a player
  # sees it, one claw injured. The interface stays, since the tab is the subject, so the letters and alerts a fresh
  # load carries are cleared first, and developer mode (the runner starts with it on) is turned off.
  Scenario: the health tab of an injured teshi
    Given Teshi Renew: a female adult teshi stands at (197, 152)
    When Teshi Renew: the camera looks at (197, 152) at zoom 6
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
