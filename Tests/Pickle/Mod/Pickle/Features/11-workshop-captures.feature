# Three images for the Workshop page, taken by the suite so that each is proved to show what it claims
# (PUBLICATION.md, "Captures for the Workshop page"). No image is committed yet: this feature is written, not
# played, and is the TO DO that PUBLICATION.md records.
#
# THE PLACE IS THE OWNER'S PHOTOGRAPHIC COLONY, not the test colony (the precedent, and the reason, is
# DrumBathHygiene/Tests/Pickle/Mod/Pickle/Features/07-workshop-captures.feature: a first pair of shots on
# `test-colony` was refused, since it is a working save, not a set). `nelim-zen-meadow-studio`, from the
# PickleTools package `nelim.pickletools.screenshotstudio`, is the default fixture for presentation shots: the
# "flowers" preset centres the camera on the open glade at (154,98), ringed with red and orange flowers, with
# nothing built there to get in frame. wsl-deps.studio.map stages that package and the shared inspect-tab step,
# so this feature belongs to a `studio` pass of its own, not the minimal or the optional-integration passes.
#
# None of the three scenarios asserts a translated string: this is presentation, not the label check of 06 and 07.
@review
Feature: the images of the Workshop page

  Background:
    Given the save "nelim-zen-meadow-studio" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: I frame the studio "flowers"

  # The first image of the page: the animal itself, on grass, nothing to explain. Spawned two cells from the
  # glade's centre so it stands clear of the flower beds. The interface is hidden with the studio's own
  # presentation mode, as DrumBathHygiene's precedent does.
  Scenario: the teshi standing in the flower glade, framed for the page
    Given Teshi Renew: a female adult teshi belonging to the colony stands at (156, 98)
    When Teshi Renew: I select the teshi
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-1-the-teshi"
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # The second image: "and its eggs" of the description. A kit beside a fertilized egg, both a few cells from the
  # adult so the frame is not crowded. Presentation mode again, since neither needs the interface to be read.
  Scenario: a teshi kit beside a fertilized egg
    Given Teshi Renew: a female kit teshi stands at (152, 99)
    And Teshi Renew: a "EggTeshiFertilized" lies at (153, 100)
    When Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop-2-the-kit-and-the-egg"
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # The third image: what the health tab shows in play, one claw injured, matching the pattern of 06 and 07 but
  # composed on the studio's grass instead of the test colony. The interface stays, since the tab is the subject.
  Scenario: the health tab of an injured teshi
    Given Teshi Renew: a female adult teshi stands at (156, 98)
    And I move the camera to (156, 98)
    When Teshi Renew: the teshi is given a "Cut" on its "front left claw"
    Then Teshi Renew: the teshi has a "Cut" on its "front left claw"
    When Teshi Renew: I select the teshi
    And Nelim's Pickle Tools: I open the "Health" inspect tab
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When I take a screenshot "workshop-3-the-health-tab"
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
