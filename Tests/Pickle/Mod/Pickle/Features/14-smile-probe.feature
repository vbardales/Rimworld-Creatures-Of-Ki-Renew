# SMILE PROBE (2026-11-12, development only, never published). Images 2 to 5 of the gallery show Nelim facing East with no readable
# smile (mouth flat or hidden). NPT answer (FACIAL-ANIMATIONS.md, NOT PLAYED): moodCheerful is a light smile; moodCheerful2 is wider;
# at East the Beauty2 head fix may hide or offset the mouth, step `the Beauty2 mouth offset is D` (0.02 to 0.05). One scenario, four
# screenshots on the same tight frame of Nelim at (212, 185) facing East: B = moodCheerful2, C/D/E = moodCheerful2 with D 0.02, 0.035, 0.05.
# Read the four captures, pick the setting where the mouth is a readable smile at 268 px, then apply it to scenarios 2 to 5 of file 13.
@review @slow @timeout:1800 @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools
Feature: smile probe on a tight East shot of Nelim

  Background:
    Given the save "Nelims-tribe" is loaded
    And I set the weather to "Clear"

  Scenario: smile probe, moodCheerful2 and the Beauty2 mouth offset sweep
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 3810 ticks
    And game speed is paused
    And Nelim's Sanctuary: I am at the sanctuary "calm-zone"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "calm-zone"
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (212, 185) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Nelim's Pickle Tools: "Nelim" stands at (212, 185) facing East
    When Teshi Renew: the camera looks at (212, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2.0
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" facial expression "normal+moodCheerful2" is held
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: "Nelim" face state is logged
    And I take a screenshot "smile-probe-B-moodCheerful2"
    And Nelim's Pickle Tools: the Beauty2 mouth offset is 0.02
    And Teshi Renew: I let 10 frames pass
    And I take a screenshot "smile-probe-C-d002"
    And Nelim's Pickle Tools: the Beauty2 mouth offset is 0.035
    And Teshi Renew: I let 10 frames pass
    And I take a screenshot "smile-probe-D-d0035"
    And Nelim's Pickle Tools: the Beauty2 mouth offset is 0.05
    And Teshi Renew: I let 10 frames pass
    And I take a screenshot "smile-probe-E-d005"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki: Teshi Renew"
    And no errors were logged
