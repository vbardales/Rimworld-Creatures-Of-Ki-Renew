# The other scenarios load a fixture colony that was saved WITHOUT this mod, which is the mod added to an existing
# colony. What no saved game reaches is a colony that starts WITH the mod: the world is generated with the animal's
# habitats in it, and the first map is generated with its spawn weights. The teshi has wildBiomes, so a new game
# is where a def that loaded but is wrong for generation would show, as an error logged during the start.
#
# A NEW COLONY IS RANDOM, and it is used sparingly. It is never the same colony twice: the world, the starting tile and
# the colonists come out differently at each start, whatever seed is named. A green shows one clean draw, not that every
# draw is clean, and a red may not come back on a rerun, so read the run's new-colony attachment and keep it with the report.
# Assert only what the draw cannot change, as below. Play it once, in an initial or a final validation, never in a fix or an
# exploration loop, and give the ticket -Extra "-pickle-scenario-timeout=400".
#
# It needs the NewColony tool. Its first run, on 2026-09-25, failed in the tool (no ideoligion and no starting pawns with
# Ideology on) and passed on 2026-09-26 once that was fixed. It is tagged @requires, so the minimal passes skip it, and a
# skipped scenario is not a passed one: wsl-deps.new-colony.map is the pass that plays it.
@requires:nelim.pickletools.newcolony @en-only
Feature: A new colony

  Scenario: a new colony starts with the mod loaded and logs nothing
    Given the main menu is open
    And Nelim's Pickle Tools: the new colony's seed is "teshi-renew"
    When Nelim's Pickle Tools: a new colony is started
    Then def "Teshi" of type "PawnKindDef" exists
    And no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
