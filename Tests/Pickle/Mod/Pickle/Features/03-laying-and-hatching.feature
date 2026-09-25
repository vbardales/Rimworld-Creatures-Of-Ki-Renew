# A mated teshi lays through the game's own job, and what she lays is decided by CompEggLayer.ProduceEgg, read
# off the compiled game: ONE stack of eggCountRange (2) eggs, all of the fertilized def while a fertilization
# is left, all of the unfertilized def otherwise. The teshi has one fertilization and lays two, so the stack is
# expected to be two FERTILIZED eggs, and no unfertilized egg at all: an unfertilized laying is also stopped
# at 0.9 of its progress, so a female that has used her fertilization does not lay again until she is mated.
# TESTING.md used to say one fertilized and one unfertilized. If this scenario fails on that, the game disagrees
# with the reading, and the failure message says how many stacks and of what.
#
# Fifteen game days of laying and fifteen of incubation do not fit a run, so the two progress fields are
# written by name; the laying, the egg's faction and the hatching are still the game's. The mating is only its
# effect, Fertilize, which is what PawnUtility.Mated ends in.
@en-only @slow @timeout:900
Feature: A mated teshi lays and its eggs hatch

  Background:
    Given the save "test-colony" is loaded
    And Teshi Renew: a female adult teshi belonging to the colony stands at (146, 155)
    And Teshi Renew: a male adult teshi belonging to the colony stands at (149, 155)
    And game speed is ultrafast

  Scenario: a mated female lays two fertilized eggs for the colony
    When Teshi Renew: the female teshi is mated with the male teshi
    And Teshi Renew: the female teshi's egg progress is set to full
    And Teshi Renew: I wait for the female teshi to lay
    Then Teshi Renew: the laying is one stack of 2 "EggTeshiFertilized" and no "EggTeshiUnfertilized"
    And Teshi Renew: the laid eggs belong to the colony
    And no errors were logged

  Scenario: her eggs hatch into two kits of the colony
    When Teshi Renew: the female teshi is mated with the male teshi
    And Teshi Renew: the female teshi's egg progress is set to full
    And Teshi Renew: I wait for the female teshi to lay
    And Teshi Renew: the eggs on the map are one tick from hatching
    And Teshi Renew: I wait for the eggs to hatch
    Then Teshi Renew: 2 teshi kits belong to the colony
    And no errors were logged
