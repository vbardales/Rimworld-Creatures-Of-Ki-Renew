# A reviewer judges only the captures. Every scenario prepares the same clean scene on a paused game, so a
# spawned animal keeps the way it was turned to and nobody has to set up a colony or open a developer tool.
# A pink box is what a missing texture draws, and at most a logged error: the assertions below say what a
# capture is about BEFORE it is taken, because a screenshot step that passes says a file was written, not that
# the animal drew.
#
# There are nine texture files: north, east and south for the adult male, the adult female and the kit. West is
# the east drawing mirrored. One row per stage shows all four facings, so three captures cover all nine files.
# The offline suite already asserts that every path the defs name resolves, case for case; what it cannot say is
# that the game draws them. The camera is zoomed all the way in: at the default zoom, the first run showed four
# animals about forty pixels wide on a 1920 pixel capture, readable but small.
#
# No scenario name here carries a comma: a filter separates its terms with commas, so a name with one cannot be
# picked alone.
@review @en-only
Feature: The teshi draws on every facing

  Background:
    Given the save "test-colony" is loaded
    And game speed is paused
    And I move the camera to (146, 155)
    And I zoom all the way in

  Scenario: the adult male turned to each of the four facings
    When Teshi Renew: I spawn a male adult teshi at (142, 155) facing north
    And Teshi Renew: I spawn a male adult teshi at (145, 155) facing east
    And Teshi Renew: I spawn a male adult teshi at (148, 155) facing south
    And Teshi Renew: I spawn a male adult teshi at (151, 155) facing west
    And Teshi Renew: I let 10 frames pass
    Then 4 "Teshi" exist
    When I take a screenshot "teshi adult male four facings"
    Then no errors were logged

  Scenario: the adult female turned to each of the four facings
    When Teshi Renew: I spawn a female adult teshi at (142, 155) facing north
    And Teshi Renew: I spawn a female adult teshi at (145, 155) facing east
    And Teshi Renew: I spawn a female adult teshi at (148, 155) facing south
    And Teshi Renew: I spawn a female adult teshi at (151, 155) facing west
    And Teshi Renew: I let 10 frames pass
    Then 4 "Teshi" exist
    When I take a screenshot "teshi adult female four facings"
    Then no errors were logged

  Scenario: the kit turned to each of the four facings
    When Teshi Renew: I spawn a female kit teshi at (142, 155) facing north
    And Teshi Renew: I spawn a female kit teshi at (145, 155) facing east
    And Teshi Renew: I spawn a female kit teshi at (148, 155) facing south
    And Teshi Renew: I spawn a female kit teshi at (151, 155) facing west
    And Teshi Renew: I let 10 frames pass
    Then 4 "Teshi" exist
    When I take a screenshot "teshi kit four facings"
    Then no errors were logged

  # The Wildness line of the port. The offline suite shows the stat exists and accepts 0.50; the game only shows
  # that it reads <Wildness> under statBases into the animal, and that is asserted here off the living animal.
  # The first run's capture of the card did NOT show a Wildness line: the list is longer than the card's window
  # and Wildness sits below the fold. So the value is asserted, and the capture shows only that the card opens
  # and reads in English; it is not offered as proof of 50 %. Pickle's pawn-stat step looks colonists up by
  # nickname, so it cannot read an animal, hence the local step.
  Scenario: a wild teshi reads Wildness 50 percent and its information card opens
    Given Teshi Renew: a female adult teshi stands at (146, 155)
    Then Teshi Renew: the teshi's stat "Wildness" is 0.5
    When Teshi Renew: I select the teshi
    And Teshi Renew: I open the information card of the teshi
    And Teshi Renew: I let 10 frames pass
    And I take a screenshot "teshi information card"
    Then no errors were logged
