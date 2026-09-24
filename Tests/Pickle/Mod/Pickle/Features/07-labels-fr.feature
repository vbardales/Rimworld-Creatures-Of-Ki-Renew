# The French twin of 06, and the only proof that the three DefInjected files were found by the game: on Linux and
# on the Steam Deck a language folder that is not found is silent. The label of each def is read off the loaded
# def in a game started in French, so an English source text left in place, or accented gibberish in developer
# mode (a key missing from the language), fails with the actual text in the message. The proper name teshi is
# kept on purpose, so the label of the race itself is the same word in both languages.
#
# The health tab shows how the longer French labels lay out: judged by a person from the capture.
@review @fr-only
Feature: The teshi, read in French

  Background:
    Given the save "test-colony" is loaded
    And game speed is paused

  Scenario: the defs carry their French labels and descriptions
    Then Teshi Renew: the ThingDef "Teshi" is labelled "teshi"
    And Teshi Renew: the ThingDef "Teshi" reads "Un grand prédateur bipède à plumes, originaire de Ki, une planète couverte de vastes forêts."
    And Teshi Renew: the ThingDef "EggTeshiFertilized" is labelled "œuf de teshi (fécondé)"
    And Teshi Renew: the ThingDef "EggTeshiFertilized" reads "Un œuf de teshi fécondé. Si tout se passe bien, un petit teshi devrait en éclore. Il peut être mangé cru, mais il est bien meilleur une fois cuit."
    And Teshi Renew: the ThingDef "EggTeshiUnfertilized" is labelled "œuf de teshi (non fécondé)"
    And Teshi Renew: the ThingDef "EggTeshiUnfertilized" reads "Un œuf de teshi non fécondé. Il peut être mangé cru, mais il est bien meilleur une fois cuit."
    And Teshi Renew: the BodyDef "BipedAnimalWithClawsAndTail" is labelled "animal bipède"
    And Teshi Renew: the teshi kit is labelled "petit teshi" and its plural "petits teshis"
    And Teshi Renew: the teshi has an attack labelled "griffe gauche"
    And Teshi Renew: the teshi has an attack labelled "griffe droite"
    And Teshi Renew: the teshi has an attack labelled "tête"
    And no errors were logged

  Scenario: the health tab names each claw and ear on its own side
    Given Teshi Renew: a female adult teshi stands at (146, 155)
    And I move the camera to (146, 155)
    When Teshi Renew: the teshi is given a "Cut" on its "griffe avant gauche"
    And Teshi Renew: the teshi is given a "Bruise" on its "griffe droite"
    And Teshi Renew: the teshi is given a "Cut" on its "oreille supérieure gauche"
    And Teshi Renew: the teshi is given a "Bruise" on its "oreille inférieure droite"
    And Teshi Renew: the teshi is given a "Cut" on its "griffe du pied gauche"
    And Teshi Renew: the teshi is given a "Bruise" on its "griffe du pied droit"
    Then Teshi Renew: the teshi has a "Cut" on its "griffe avant gauche"
    And Teshi Renew: the teshi has no "Cut" on its "griffe droite"
    And Teshi Renew: the teshi has a "Bruise" on its "griffe droite"
    And Teshi Renew: the teshi has no "Bruise" on its "griffe avant gauche"
    And Teshi Renew: the teshi has a "Cut" on its "oreille supérieure gauche"
    And Teshi Renew: the teshi has a "Bruise" on its "oreille inférieure droite"
    And Teshi Renew: the teshi has a "Cut" on its "griffe du pied gauche"
    And Teshi Renew: the teshi has a "Bruise" on its "griffe du pied droit"
    When Teshi Renew: I select the teshi
    And Nelim's Pickle Tools: I open the "Health" inspect tab
    Then Nelim's Pickle Tools: the "Health" inspect tab is open
    When I take a screenshot "teshi health tab fr"
    Then no errors were logged
