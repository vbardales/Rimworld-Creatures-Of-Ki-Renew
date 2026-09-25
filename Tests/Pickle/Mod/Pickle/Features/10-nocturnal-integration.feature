# The optional integration with [XND] Nocturnal Animals (Continued) (Mlie.XNDNocturnalAnimals, Workshop 2269731409).
# That mod gives an animal a circadian rhythm through a def extension it owns, and Mod/Patches/NocturnalAnimals.xml gives
# the teshi the crepuscular one, which is the owner's choice and not the source's. The offline suite checks the patch is
# a FindMod on the two names of that mod and touches only this mod's own def. It has no copy of the other mod, so it
# cannot show that the extension class still exists under that name, nor that the patch landed: that is what this shows.
#
# The assertion reads the parsed race of the running game, so it holds only if the game found the class, parsed the
# extension and kept the def. The scenario also asserts that nothing from this mod was logged, since a missing class is
# what makes the game drop a def.
#
# It needs the other mod mounted: the pass map wsl-deps.avec-nocturnal.map. In the minimal passes the scenario is
# skipped by its requirement, and a skipped scenario is not a passed one.
@requires:Mlie.XNDNocturnalAnimals @en-only
Feature: The Nocturnal Animals integration

  Scenario: the teshi gets the crepuscular body clock
    Given the save "test-colony" is loaded
    Then mod "Mlie.XNDNocturnalAnimals" is loaded
    And Teshi Renew: the teshi's race carries the extension "NocturnalAnimals.ExtendedRaceProperties" with bodyClock "Crepuscular"
    And no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
