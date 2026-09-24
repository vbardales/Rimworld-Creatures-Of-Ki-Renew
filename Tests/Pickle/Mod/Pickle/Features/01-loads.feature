# Runtime checks only. _tools/Run-Functional-Tests.ps1 owns the XML contracts, the references and the DefInjected
# paths. What only a running game shows is that the game's own loader kept every def, and that the Wildness the
# game computes for the animal is the one the def states: in 1.6 the old <race><wildness> form is not an error,
# it is silently not read, and the stat then falls back to -1.
Feature: Creatures of Ki - Teshi Renew loads on its own

  Scenario: the mod and its five defs load without a warning or an error
    Then mod "nelim.creaturesofkirenew" is loaded
    And def "Teshi" of type "ThingDef" exists
    And def "Teshi" of type "PawnKindDef" exists
    And def "EggTeshiFertilized" of type "ThingDef" exists
    And def "EggTeshiUnfertilized" of type "ThingDef" exists
    And def "BipedAnimalWithClawsAndTail" of type "BodyDef" exists
    And def "Teshi" stat "Wildness" is 0.5
    And no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
