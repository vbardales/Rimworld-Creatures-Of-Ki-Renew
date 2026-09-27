# Three images for the Workshop page, taken by the suite so that each is proved to show what it claims
# (PUBLICATION.md, "Captures for the Workshop page"). No image is committed yet: this feature is written, not
# played, and is the TO DO that PUBLICATION.md records.
#
# THE PLACE IS THE OWNER'S PHOTOGRAPHIC COLONY, not the test colony (the precedent, and the reason, is
# DrumBathHygiene/Tests/Pickle/Mod/Pickle/Features/07-workshop-captures.feature: a first pair of shots on
# `test-colony` was refused, since it is a working save, not a set). `nelim-zen-meadow-studio`, from the
# PickleTools package `nelim.pickletools.screenshotstudio`, is the default fixture for presentation shots.
#
# THE FIRST TRY (2026-09-27) FRAMED TOO FAR. The "flowers" preset centres on (154,98) at camera size 12, a
# whole-scene zoom that left the teshi small in a mostly bare frame, and (154,98) is also exactly where the
# studio's own actor Miel is stationed (ScreenshotStudio's StudioSteps.cs, the "flowers" place), so she stood
# in shot uninvited. This version spawns the scene 16 cells east and 6 north of that spot, (170,92), well clear
# of Miel (about 17 cells away, outside the frame at the zoom used here), and a local step centres the camera
# there at a size that reads as a close-up (`the camera looks at (x, z) at zoom {int}`, the same pattern
# DrumBathHygiene's own capture scenario uses for the same reason). Whether (170,92) sits on plain grass or
# among the flower clusters has not been read from the fixture and is what the played run will show; the owner
# may ask for a different spot once the images are opened.
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

  # The first image of the page: the animal itself, nothing to explain. Presentation mode hides the interface,
  # as DrumBathHygiene's precedent does; nothing else needs to be cleared, since nobody else stands here.
  Scenario: the teshi standing in the meadow, framed close for the page
    Given Teshi Renew: a female adult teshi belonging to the colony stands at (170, 92)
    When Teshi Renew: the camera looks at (170, 92) at zoom 6
    And Teshi Renew: I select the teshi
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-1-the-teshi"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # The second image: "and its eggs" of the description. A kit beside a fertilized egg, close enough that both
  # read clearly. Presentation mode again, since neither needs the interface to be read.
  Scenario: a teshi kit beside a fertilized egg, framed close for the page
    Given Teshi Renew: a female kit teshi stands at (170, 92)
    And Teshi Renew: a "EggTeshiFertilized" lies at (171, 93)
    When Teshi Renew: the camera looks at (170, 92) at zoom 5
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-2-the-kit-and-the-egg"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # The third image: what the health tab shows in play, one claw injured, matching the pattern of 06 and 07 but
  # composed away from Miel's spot. The interface stays, since the tab is the subject, so the letters and
  # alerts a fresh studio load carries are cleared first, and developer mode (the runner starts with it on) is
  # turned off so the capture reads as a player sees it.
  Scenario: the health tab of an injured teshi, framed close for the page
    Given Teshi Renew: a female adult teshi stands at (170, 92)
    When Teshi Renew: the camera looks at (170, 92) at zoom 6
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
