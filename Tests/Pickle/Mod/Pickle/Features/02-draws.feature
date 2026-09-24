# A reviewer judges only the captures. Every scenario prepares the same clean scene on a paused game, so a
# spawned animal keeps the way it was turned to and nobody has to set up a colony or open a developer tool.
# A pink box is what a missing texture draws, and at most a logged error: the assertions below say what a
# capture is about BEFORE it is taken, because a screenshot step that passes says a file was written, not that
# the animal drew.
#
# There are nine texture files: north, east and south for the adult male, the adult female and the kit. West is
# the east drawing mirrored. One row per stage shows all four facings, so three captures cover all nine files.
# The offline suite already asserts that every path the defs name resolves, case for case; what it cannot say is
# that the game draws them.
@review @en-only
Feature: The teshi draws on every facing

  Background:
    Given the save "test-colony" is loaded
    And game speed is paused
    And I move the camera to (146, 155)

  Scenario: the adult male, turned north, east, south and west
    When Teshi Renew: I spawn a male adult teshi at (142, 155) facing north
    And Teshi Renew: I spawn a male adult teshi at (145, 155) facing east
    And Teshi Renew: I spawn a male adult teshi at (148, 155) facing south
    And Teshi Renew: I spawn a male adult teshi at (151, 155) facing west
    And Teshi Renew: I let 10 frames pass
    Then 4 "Teshi" exist
    When I take a screenshot "teshi adult male four facings"
    Then no errors were logged

  Scenario: the adult female, turned north, east, south and west
    When Teshi Renew: I spawn a female adult teshi at (142, 155) facing north
    And Teshi Renew: I spawn a female adult teshi at (145, 155) facing east
    And Teshi Renew: I spawn a female adult teshi at (148, 155) facing south
    And Teshi Renew: I spawn a female adult teshi at (151, 155) facing west
    And Teshi Renew: I let 10 frames pass
    Then 4 "Teshi" exist
    When I take a screenshot "teshi adult female four facings"
    Then no errors were logged

  Scenario: the kit, turned north, east, south and west
    When Teshi Renew: I spawn a female kit teshi at (142, 155) facing north
    And Teshi Renew: I spawn a female kit teshi at (145, 155) facing east
    And Teshi Renew: I spawn a female kit teshi at (148, 155) facing south
    And Teshi Renew: I spawn a female kit teshi at (151, 155) facing west
    And Teshi Renew: I let 10 frames pass
    Then 4 "Teshi" exist
    When I take a screenshot "teshi kit four facings"
    Then no errors were logged

  # The Wildness line of the port. The offline suite shows the stat exists and accepts 0.50; the game only shows
  # that it reads <Wildness> under statBases into the animal, and 01-loads asserts the value the game computes.
  # 50 % is what the card must say; the capture is what a person reads it off. Pickle's pawn-stat step looks
  # colonists up by nickname, so it cannot read an animal: the card is the only route to the pawn.
  Scenario: the information card of a wild teshi says Wildness 50 %
    Given Teshi Renew: a female adult teshi stands at (146, 155)
    When Teshi Renew: I select the teshi
    And Teshi Renew: I open the information card of the teshi
    And Teshi Renew: I let 10 frames pass
    And I take a screenshot "teshi information card wildness"
    Then no errors were logged
