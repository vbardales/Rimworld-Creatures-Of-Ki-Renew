# The dessicated teshi corpse is drawn with the dromedary's texture. That is Shooki's own choice, inherited on
# purpose and recorded in ATTRIBUTION.md, so the expected capture is a dromedary's dry bones, and it is correct.
# What fails is a pink box or a logged error: the game does not ship that texture in the clear, so no file the
# offline suite can open names it, and only the drawer knows whether it resolves.
@review @en-only
Feature: The dessicated teshi corpse draws

  Scenario: a female teshi is killed and dessicated, and the corpse draws
    Given the save "test-colony" is loaded
    And game speed is paused
    And I move the camera to (146, 155)
    And Teshi Renew: a female adult teshi stands at (146, 155)
    When Teshi Renew: the female teshi is killed and left dessicated
    And Teshi Renew: I let 10 frames pass
    And I take a screenshot "teshi dessicated corpse"
    Then no errors were logged
