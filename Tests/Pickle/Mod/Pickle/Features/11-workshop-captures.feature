# Three images for the Workshop page, taken by the suite so that each is proved to show what it claims
# (PUBLICATION.md, "Captures for the Workshop page"). No image is committed yet: this feature is written, not
# played, and is the TO DO that PUBLICATION.md records.
#
# THE PLACE IS THE OWNER'S PHOTOGRAPHIC COLONY, not the test colony (the precedent, and the reason, is
# DrumBathHygiene/Tests/Pickle/Mod/Pickle/Features/07-workshop-captures.feature: a first pair of shots on
# `test-colony` was refused, since it is a working save, not a set). `nelim-zen-meadow-studio`, from the
# PickleTools package `nelim.pickletools.screenshotstudio`, is the default fixture for presentation shots.
#
# TWO REWRITES SO FAR (2026-09-27). The first version used the "flowers" preset's default camera (size 12),
# which left the teshi small in a wide frame at the exact spot where the studio's own actor Miel is stationed
# (ScreenshotStudio's StudioSteps.cs), so she stood in shot uninvited. The second moved the scene to (170,92)
# and added a local camera-zoom step, but that spot's own colour was never read from the fixture. The owner then
# asked for the orange flower bed specifically: the studio mixes dandelions (yellow), daylilies (orange,
# `Plant_Daylily`) and roses (red) at random per cell, so no fixed coordinate is reliably one colour. The first
# search asked for nine daylilies of nine, about one chance in 200,000 per block, and found none within 30 cells
# (tickets 1d61 and d7ea, both red on that message). It now asks for at least four daylilies in the 3x3 block with
# only grass or bare ground in the other cells, no other flower, tree or bush, within 40 cells of (170,92); the
# scene and the camera use the block found.
#
# wsl-deps.studio.map stages ScreenshotStudio, the shared inspect-tab step, and the shared screenshot-tidying
# steps (dev mode off, letters and alerts cleared), so this feature belongs to a `studio` pass of its own, not
# the minimal or the optional-integration passes. None of the three scenarios asserts a translated string: this
# is presentation, not the label check of 06 and 07.
@review
Feature: the images of the Workshop page

  Background:
    Given the save "nelim-zen-meadow-studio" is loaded
    And game speed is paused
    And Teshi Renew: a 3x3 patch with at least 4 "Plant_Daylily" and no other flower is found near (170, 92)

  # The first image of the page: the animal itself, on the orange flowers, nothing to explain. Presentation
  # mode hides the interface, as DrumBathHygiene's precedent does; nothing else needs to be cleared, since
  # nobody else stands here.
  Scenario: the teshi standing in the orange flower bed, framed close for the page
    Given Teshi Renew: a female adult teshi belonging to the colony stands at the found patch
    When Teshi Renew: the camera looks at the found patch at zoom 6
    And Teshi Renew: I select the teshi
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-1-the-teshi"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # The second image: "and its eggs" of the description. A kit on the orange flowers, its egg one cell away so
  # both read clearly. Presentation mode again, since neither needs the interface to be read.
  Scenario: a teshi kit beside a fertilized egg, on the orange flower bed
    Given Teshi Renew: a female kit teshi stands at the found patch
    And Teshi Renew: a "EggTeshiFertilized" lies one cell from the found patch
    When Teshi Renew: the camera looks at the found patch at zoom 5
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-2-the-kit-and-the-egg"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # The third image: what the health tab shows in play, one claw injured, on the same orange flowers. The
  # interface stays, since the tab is the subject, so the letters and alerts a fresh studio load carries are
  # cleared first, and developer mode (the runner starts with it on) is turned off so the capture reads as a
  # player sees it.
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
