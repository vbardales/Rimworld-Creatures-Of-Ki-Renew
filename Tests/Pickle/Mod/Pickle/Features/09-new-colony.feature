# The other scenarios load a fixture colony that was saved WITHOUT this mod, which is the mod added to an existing
# colony. What no saved game reaches is a colony that starts WITH the mod: the world is generated with the animal's
# habitats in it, and the first map is generated with its spawn weights. The teshi has wildBiomes, so a new game
# is where a def that loaded but is wrong for generation would show, as an error logged during the start.
#
# It needs the NewColony tool, which its own README says was written on 2026-09-25 and not played: this is that
# tool's first run for this suite, and a failure here can be the tool's. It is tagged @requires, so the minimal
# passes skip it, and a skipped scenario is not a passed one: wsl-deps.new-colony.map is the pass that plays it.
@requires:nelim.pickletools.newcolony @en-only
Feature: A new colony

  Scenario: a new colony starts with the mod loaded and logs nothing
    Given the main menu is open
    And Nelim's Pickle Tools: the new colony's seed is "teshi-renew"
    When Nelim's Pickle Tools: a new colony is started
    Then def "Teshi" of type "PawnKindDef" exists
    And no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
