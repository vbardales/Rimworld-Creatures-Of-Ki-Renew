# The fixture colony was saved WITHOUT this mod, so loading it is the mod added to an existing colony, and this
# scenario goes on to save that colony with the animal and an egg in it and load it again. What must survive is
# what the mod owns: the animal and its egg. An upgrade from a previous revision is not covered: the only earlier
# upload, 0.1.0, held the same Mod/ as the tree under test, so there is no previous revision to upgrade from.
@en-only
Feature: The teshi and its egg survive a save and reload

  Scenario: a colony teshi and a fertilized egg survive a round trip
    Given the save "test-colony" is loaded
    And Teshi Renew: a female adult teshi belonging to the colony stands at (146, 155)
    And I spawn a "EggTeshiFertilized" at (146, 153)
    When I wait 300 ticks
    And I save and reload
    Then 1 "Teshi" exist
    And 1 "EggTeshiFertilized" exist
    And the save round trips
    And no errors were logged
