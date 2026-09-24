# What a player reads, in English: the labels and descriptions ON THE LOADED DEFS, and the health tab of an
# injured teshi. English is the Def's own source text, so the label assertions add nothing about the English
# wording: they are the control that a pass claiming English really ran in English, as the French twin is the
# proof that the DefInjected files were found. The health tab is judged by a person from the capture.
#
# Body parts are found by the label the player reads, in the language of the pass, and a label shared by two
# parts fails the step. The right arm's claw is "right claw" and the left arm's is "front left claw": both are
# the original mod's names and kept as they are; this checks each lands on its own side.
@review @en-only
Feature: The teshi, read in English

  Background:
    Given the save "test-colony" is loaded
    And game speed is paused

  Scenario: the defs carry their English labels and descriptions
    Then Teshi Renew: the ThingDef "Teshi" is labelled "teshi"
    And Teshi Renew: the ThingDef "Teshi" reads "A large, bipedal feathered predator, originating from the sprawling forestplanet Ki."
    And Teshi Renew: the ThingDef "EggTeshiFertilized" is labelled "teshi egg (fert.)"
    And Teshi Renew: the ThingDef "EggTeshiFertilized" reads "A fertilized teshi egg. If all goes well, it should hatch into a baby teshi. It can be eaten raw, but it's much better cooked."
    And Teshi Renew: the ThingDef "EggTeshiUnfertilized" is labelled "teshi egg (unfert.)"
    And Teshi Renew: the ThingDef "EggTeshiUnfertilized" reads "An unfertilized teshi egg. It can be eaten raw, but it's much, much better cooked."
    And Teshi Renew: the BodyDef "BipedAnimalWithClawsAndTail" is labelled "biped animal"
    And Teshi Renew: the teshi kit is labelled "teshi kit" and its plural "teshi kits"
    And Teshi Renew: the teshi has an attack labelled "left claw"
    And Teshi Renew: the teshi has an attack labelled "right claw"
    And Teshi Renew: the teshi has an attack labelled "head"
    And no errors were logged

  Scenario: the health tab names each claw and ear on its own side
    Given Teshi Renew: a female adult teshi stands at (146, 155)
    And I move the camera to (146, 155)
    When Teshi Renew: the teshi is given a "Cut" on its "front left claw"
    And Teshi Renew: the teshi is given a "Bruise" on its "right claw"
    And Teshi Renew: the teshi is given a "Cut" on its "left upper ear"
    And Teshi Renew: the teshi is given a "Bruise" on its "right lower ear"
    And Teshi Renew: the teshi is given a "Cut" on its "left footclaw"
    And Teshi Renew: the teshi is given a "Bruise" on its "right footclaw"
    Then Teshi Renew: the teshi has a "Cut" on its "front left claw"
    And Teshi Renew: the teshi has no "Cut" on its "right claw"
    And Teshi Renew: the teshi has a "Bruise" on its "right claw"
    And Teshi Renew: the teshi has no "Bruise" on its "front left claw"
    And Teshi Renew: the teshi has a "Cut" on its "left upper ear"
    And Teshi Renew: the teshi has a "Bruise" on its "right lower ear"
    And Teshi Renew: the teshi has a "Cut" on its "left footclaw"
    And Teshi Renew: the teshi has a "Bruise" on its "right footclaw"
    When Teshi Renew: I select the teshi
    And Nelim's Pickle Tools: I open the "Health" inspect tab
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When I take a screenshot "teshi health tab en"
    Then no errors were logged
