# The optional integration with A Dog Said... Animal Prosthetics 2 (SamBucher.ADogSaidAnimalProsthetics2,
# Workshop 3238353862). That mod lists each animal that may receive prostheses in one of three abstract recipe
# categories, and Mod/Patches/ADS2_Categories.xml writes the teshi into all three, as it does for the bears and
# the wolves. The offline suite checks the patch is conditional, names only this mod's animal, and that
# About.xml loads this mod before ADS2 as its author asks. It has no copy of the other mod, so it cannot show
# that the categories still exist under those names, nor that the patch landed: that is what this shows.
#
# The recipes a race is offered are those whose recipeUsers list it. The teshi has to be offered as many of
# ADS2's recipes as a grizzly bear, which that mod already puts in category 3.
#
# It needs the other mod mounted: the pass map wsl-deps.avec-ads2.map. In the minimal passes the scenario is
# skipped by its requirement, and a skipped scenario is not a passed one.
@requires:SamBucher.ADogSaidAnimalProsthetics2 @en-only
Feature: The teshi is in the categories of A Dog Said... Animal Prosthetics 2

  Scenario: the teshi is offered the same prosthetic recipes as a grizzly bear
    Given the save "test-colony" is loaded
    Then mod "SamBucher.ADogSaidAnimalProsthetics2" is loaded
    And mod "nelim.creaturesofkirenew" loads before "SamBucher.ADogSaidAnimalProsthetics2"
    And Teshi Renew: the teshi offers as many recipes from the mod "SamBucher.ADogSaidAnimalProsthetics2" as the "Bear_Grizzly"
    And no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
