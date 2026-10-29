# THIRD SERIES, SHOTLIST REWORKED 2026-10-25 against GALLERY.md of 2026-10-23 and 2026-10-25 (AUDIT 9.0). The scenarios below were rewritten from this header the same day (Check-Steps.ps1 green, nothing played).
# Candidates only: the published gallery (1-portrait to 6-the-infirmary-health-tab) changes only with Virginie's word. Image 7 is the published image, not replayed.
# Previous run (verdicts on the 2026-10-18 plan): image 3 3.5 (Nelim seen from behind), 4 3 (hay over her face), 5 2 (empty box, no kit in frame), 6 4 (run f5d5, Evidence/gallery-v3-6b); images 1 and 2 never produced a report.
#
# STORY (one evening, Nelim is the protagonist, the teshi family are her guests; the day is the fixture's own, 4th of September 5500, permanent summer): on a clear late afternoon Nelim comes down to the pond to
# watch over a teshi that sleeps by day, and stays with it through the dusk: the waking, the courting of the pair, the straw she carries to the nest, the egg, the hatching, the first meal from her hand, and the night
# at the tea-house infirmary where a cut claw meets a bionic arm. She always moves or faces East: the pond is at x about 156, the nest at x about 213, so the series reads as one journey from the bank to the nest.
# TIME: one start hour (16h), then 30 game minutes per image (1 250 ticks, cumulative): waits 60, 1310, 2560, 3810, 5060, 6310 ticks; image 7 at 19h30 (8810). Every Scenario reloads the save, so each sets 16h again,
# waits its own total, then places what lives in the scene after the wait. The teshi is crepuscular: asleep at 16h, awake and active from 16h30.
# WEATHER: `I set the weather to "Clear"` in the Background, held on purpose for the whole series (dusk comes from the hour and the lanterns; rain or fog would hide the animals). The lit lantern is the dusk marker: none in images 1 and 2, lit from image 3.
# NELIM: ONE outfit for the whole evening (GALLERY.md criterion d, continuity): Apparel_CollarShirt dyed rgb (126, 150, 118) sage green, Apparel_Pants dyed rgb (70, 56, 44) dark brown (clothes are free, NSB 2026-10-28).
#   CANON of NSB (2026-10-28, SanctuaryBacklot sanctuary-nelim-check.feature): hairstyle Roo_HD_Hair_Highpony (long: Bob was my choice with no source, dropped), hair rgb (51, 33, 16), skin rgb (228, 158, 90) and Eyes_DarkBrown stay as the save gives them (no override).
#   Smile by default (MouthSmile, LidCheerful, face kit neutral, expression "normal" set last, map at 20 degrees). Image 5 adds BrowRaised. Sage keeps her readable at 268 px against brown soil and yellow grass.
#   The only change is image 7 (published): a clean white BasicShirt, she changed to tend the injured teshi. No jacket (Opus: it would vanish against the yellow grass, and the story does not call for it). No hat in the series: no hat-hair mod.
# FRAMING RULE of water-garden: the hole at (149, 173) and the steam geyser at (150, 173) stay out of frame, so every pond frame starts at x 152 or more.
# FRONT VIEWS: images 2, 4, 5 and 6 show the teshi from the front; image 5 shows the kit's face.
# DECOR: each image builds its own and it is removed after the scenario (StageDecor). Same bed cell (156, 172) in images 1 to 3 (empty in 3: where she slept); images 4 to 6 share the calm-zone corner and the lantern cell (213, 186).
# ANIMAL DRESS: not used. No apparel mod loaded fits the teshi body (Animal Apparel is not in the Sanctuary map); a dressed teshi would be invented, so the shotlist leaves them bare.
# GESTURES: "game paused mid-play". A forced walk is drawn only while ticks run, so every mid-stride is: place the pawn, `forced to walk to`, `I advance the paused game by exactly N ticks` (NPT, 2026-10-25: the game stays paused, pawns move N exact ticks), pause. 13 ticks per cell at 4.6 cells per second for a pawn, 8.6 for a teshi (MoveSpeed 7).
#
# SHOTLIST. Fields: index and file | place, hour, frame | subject, instant (just before / just after) | how the gesture is obtained | living things | Nelim | decor with defNames | mods and steps | type, subtitle | ESTIMATE /5, risk, plan
#
#  1  workshop3-1-the-watch
#     water-garden, west bank, 16h00, Clear, 60 ticks of set-up only; WIDE, root 4.5, centre (160, 172), frame x 152 to 168 (the opening image: it sets the place)
#     the mother asleep on a large bed, Nelim arriving at its side; says: by day she sleeps, and someone watches over her
#     instant: Nelim has just come down the bank and slows at the bedside; next she stops and watches
#     method: `Nelim stands at (152, 173) facing East`, `Nelim is forced to walk to (155, 173)`, `I advance the paused game by exactly 14 ticks`, game paused: mid-stride, profile, face reads
#     the mother asleep (lies down to sleep) on the left third; lily pads and the pond fill the right, the bank is the foreground
#     Nelim: the evening outfit (above), smile
#     GSAnimalBedBigPrestige at (156, 172); Plant_Daylily fully grown at (153, 175)
#     Animal.BedsNew; steps of series 2 plus `is forced to walk to`; story scene; "Nelim comes down to the water to watch over the sleeping teshi."
#     ESTIMATE 4. Risk: the mother is small at 268 px in a wide frame (accepted, it is the opener), geyser at the edge. Plan: frame starts at x 152; if the mother is lost, root 4.0.
#
#  2  workshop3-2-awake
#     water-garden, west bank, 16h30, Clear, 1 310 ticks; TIGHT front portrait, root 1.8, centre (156, 171)
#     the mother has just risen from the bed behind her; says: the head, the four banded ears, the tail
#     instant: she has just woken and steps off the bed; next she walks down the bank
#     method: `a female adult animal of kind "Teshi" named "Mother" is spawned at (156, 172)` on the bed, `"Mother" is forced to walk to (156, 166)`, `I advance the paused game by exactly 10 ticks` (mother moves 7 cells per second, so about 1.2 cells: z about 170.8, inside the frame z 169.2 to 172.8), pause: mid-step facing South (front view); Nelim stands at (156, 160), out of frame. Timing is a guess, read the capture
#     Nelim: not in frame (an animal portrait; she waits south of the bank, out of frame)
#     decor: GSAnimalBedBigPrestige at (156, 172) behind the mother; Plant_Daylily fully grown at (153, 175)
#     kind defName `Teshi` (read in Mod/Defs/ThingDefs_Races/Races_Animal_Teshi.xml); steps of the Pickle Tools catalogue; story scene; "Awake, she steps off her bed and down the bank."
#     ESTIMATE 4.5. Risk: the forced walk is untested on an animal (NPT: compiled, not played, ticket 1071). Plan B: `Teshi Renew: a female adult teshi belonging to the colony stands at (156, 171)` with the bed behind her (criterion e weak, estimate 4).
#
#  3  workshop3-3-the-parents
#     water-garden, west bank, 17h00, Clear, 2 560 ticks; MEDIUM, root 3.5, centre (158, 173), frame x 151.8 to 164.2
#     the pair nose to nose with hearts, Nelim passing with straw; says: the courting, at the start of the dusk
#     instant: Nelim has just walked in with an armful of straw and glances at the pair; next she walks on to the nest
#     method: female at (158, 172), male at (160, 172), mate step; `Nelim stands at (152, 174) facing East`, `Nelim is forced to haul 1 of the item "Hay" to (157, 174)` (NPT: the stack appears beside her, she picks it up, walks with it in her hands), `I advance the paused game by exactly 30 ticks` (past the pick-up, then mid-walk; guess, read the capture), pause (Nelim at row 174, two cells above the bottom edge)
#     the two adults mate (hearts) in the middle; the empty bed at the left is where she slept
#     Nelim: the evening outfit, smile, profile facing East, so her face reads
#     DR_StickLantern lit at (161, 171); Plant_Daylily fully grown at (153, 171), (153, 170); GSAnimalBedBigPrestige at (156, 172) empty
#     Mlie.StickLantern, Animal.BedsNew; story scene; "The parents meet nose to nose while Nelim passes with straw."
#     ESTIMATE 4. Risk: the haul timing (pick-up, then mid-walk) is a guess, and the step is compiled, not played (NPT ticket 1071). Plan: advance 30, then 60 on a refile; if the hay hides her face as in the previous image 4, haul Meat_Chicken and the line loses "straw".
#
#  4  workshop3-4-the-nesting-box
#     calm-zone, east of the cream square, 17h30, Clear, 3 810 ticks; MEDIUM-CLOSE, root 3.2, centre (213, 185)
#     the mother on her bed in a nest of yellow grass, the egg in its box, Nelim bringing the straw; says: she builds the nest as the light goes, and Nelim helps
#     instant: Nelim has carried the straw from the bank and reaches the nest; next she lays it by the bed
#     method: `Nelim stands at (208, 185) facing East`, `Nelim is forced to haul 1 of the item "Hay" to (212, 185)`, `I advance the paused game by exactly 45 ticks` (past the pick-up, then mid-walk, never at the pick-up: the hay covered her face last run); she stays west of the grass at row 185
#     the mother from the front on her bed
#     Nelim: the evening outfit, smile
#     Plant_YellowTallGrass 3 x 5 at (214 to 218, 184 to 186) minus (216, 185), fully grown; EggBox (217, 185); GSAnimalBedBigPrestige (215, 185); DR_StickLantern lit (213, 186) (kept at the centre-left for continuity with images 5 and 6; Opus suggested (209, 187), refused)
#     steps played in series 2; story scene; "Nelim brings straw to the mother at her nesting box."
#     ESTIMATE 4. Risk: hay icon hides her face again. Plan: pause mid-stride facing East; plan B carried item Meat_Chicken (read in image 6) and the line becomes "brings a meal".
#
#  5  workshop3-5-the-hatching
#     calm-zone, same corner, 18h00, Clear, 5 060 ticks; TIGHT, root 2.3, centre (215, 185)
#     the egg has hatched, the kit stands below the empty box beside its mother; says: it is born at dusk, by the mod's own hatching
#     instant: the egg has just hatched and Nelim hurries over; next she reaches the kit
#     method: eggs one tick from hatching, wait for the hatch, THEN `the newborn animal of kind "Teshi" is named "Kit"` and `"Kit" stands at (217, 184)` (the hatched kit wandered out of frame last run; NPT step, fails if the hatcher already named the kit: plan B `Teshi Renew: a female kit teshi stands at (217, 184)`), mother at (215, 185), Nelim at (209, 185) facing East forced to walk to (212, 185), `I advance the paused game by exactly 10 ticks`, pause
#     the kit and the mother, both from the front; BrowRaised and a smile on Nelim, her eyes toward the kit
#     Nelim: the evening outfit, BrowRaised, MouthSmile
#     the nest of image 4 minus the grass at (216, 184), (217, 184) (the kit stands on bare soil for contrast), Plant_Daylily fully grown at (213, 184), (213, 185), the same lantern; the egg gone
#     hatcher steps played in series 2; story scene; "The kit hatches beside its mother."
#     ESTIMATE 4. Risk: the kit pale on yellow, or still out of frame. Plan: bare soil under it and daylilies' orange behind; root 2.0 if it reads small.
#
#  6  workshop3-6-the-first-meal (closing story image)
#     calm-zone, west of the nest, 18h30, Clear, 6 310 ticks; MEDIUM, root 2.8, centre (210, 185) (widened from 2.2 so the dusk and the lantern show)
#     Nelim holds out a piece of meat, the kit comes to her, the mother watches; says: the first meal, and that the teshi lives with people
#     instant: she has just held out the meal and the kit steps up; next it eats
#     method: as run f5d5 (Nelim stands at (208, 185) facing East, carries 1 Meat_Chicken, kit placed at (210, 185), mother at (212, 184)), only the shirt colour and the root size change
#     the kit approaches, the mother looks on
#     Nelim: the evening outfit, smile
#     DR_StickLantern lit (213, 186); Plant_Daylily fully grown at (209, 183), (211, 183) (no pot: a pot and its plant cannot share a cell, run 551e); bare corner
#     steps played in series 2; story scene; "Nelim feeds the kit by hand."
#     ESTIMATE 4.5. Risk: none new, the layout was accepted at 4. Plan: replay it with the shirt colour for continuity.
#
#  7  workshop3-7-the-infirmary-health-tab
#     hut (the tea-house as animal infirmary), 19h30, Clear, 8 810 ticks
#     the Health tab on the injured teshi; says: the body names each claw and ear, and the mod gives it a bionic arm (ADS2)
#     interface kept, root 3.4, as the second series; the published image stands. Nelim wears a clean white BasicShirt (244, 242, 234): she changed to tend the injured teshi (the story's change of outfit)
#     GSAnimalBedBig (141, 72), DR_StickLantern lit (143, 73), two blue braziers of the hut; needs SamBucher.ADogSaidAnimalProsthetics2; interface window on a staged scene, set aside; "A cut claw, and a bionic arm."
#     ESTIMATE 5. Risk: none new; the published image stays unless the owner asks otherwise.
#
# OPUS DIRECTOR PASS (one call, 2026-10-25). Kept: straight East walk in image 1; cut "next she sits"; one bed cell (156, 172) in images 1 to 3; mother mid-step off the bed in image 2 (through `follows`, because no step walks an animal);
#   Nelim out of frame in image 2; Hay carried in image 3 to set up image 4; Hay in image 4 with a mid-stride pause; Nelim west of the grass; kit below the box on bare soil in image 5, frame centre (215, 185); shirt-only change and wider root in image 6;
#   no jacket; always East; lantern lit from image 3. Refused: lantern moved to (209, 187) in image 4 (kept at (213, 186) for continuity with 5 and 6); mother at (216, 185) in image 5 (she stays on the bed at (215, 185)).
#   Not checked: whether 18h30 reads as dusk in the game's sky (the 17h30 and 18h00 captures of the previous run read as warm dusk).
#
# SERIES SCORE: 4 of 5. Story written once, scenes move East from the pond to the nest, wide (1), tight (2, 5), medium (3, 4, 6), opening 1 and closing 6 then 7, teshi from the front in 2, 4, 5, 6, one outfit with its one justified change, smile by default, instant and method on every gesture.
# AFTER A RUN: put the real verdict of each capture (accept or refuse) next to the estimate in STATUS.md; the gap is what the next shotlist learns from.
# MODS (pass map wsl-deps.sanctuary.map, nothing challenged): Animal.BedsNew 3107972819, Mlie.StickLantern 2024351846, the body and facial mods of the Sanctuary map, ADS2 (image 7 only).
# STEPS: NPT answered on 2026-10-25 (commits 89a2970, 8318f39, compiled, NOT PLAYED, ticket 1071): `"X" is forced to walk to (x, z)` works for animals, `a female adult animal of kind "Teshi" named "Mother" is spawned at (x, z)`, `the newborn animal of kind "Teshi" is named "Kit"`, `I advance the paused game by exactly N ticks`. Carry during a walk (images 3 and 4): NPT says use `"Nelim" is forced to haul 1 of the item "Hay" to (x, z)` (colonist only, compiled, not played); Teshi Renew `carries` on a forced walk is unverified and not used there. Filter: any ticket on a pass other than wsl-deps.sanctuary.map excludes this suite (`!13-workshop-captures-v3`).
@review @slow @timeout:1800 @requires:SamBucher.ADogSaidAnimalProsthetics2
Feature: the images of the Workshop page, third series (one evening, Nelim the protagonist, scenarios written from the 2026-10-25 header)

  Background:
    Given the save "Nelims-tribe" is loaded
    And I set the weather to "Clear"

  # Image 1, 16h00, Clear, WIDE root 4.5: the mother asleep on the bed, Nelim arrives mid-stride at its side (forced walk, 14 ticks, pause).
  Scenario: 16h00, Nelim arrives at the bedside of the teshi asleep on the west bank
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 60 ticks
    And game speed is paused
    And Nelim's Sanctuary: I am at the sanctuary "water-garden"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "water-garden"
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (156, 172)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (153, 175) fully grown
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (152, 173) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Teshi Renew: a female adult teshi belonging to the colony stands at (156, 172)
    And Teshi Renew: the female adult teshi lies down to sleep
    And Nelim's Pickle Tools: "Nelim" stands at (152, 173) facing East
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (155, 173)
    And Nelim's Pickle Tools: I advance the paused game by exactly 14 ticks
    When Teshi Renew: the camera looks at (160, 172) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 4.5
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And I take a screenshot "workshop3-1-the-watch"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 2, 16h30, Clear, TIGHT root 1.8: the mother has just risen from the bed and follows Nelim, who walks away south out of frame.
  # Plan B if the named spawn or `follows` fails: `Teshi Renew: a female adult teshi belonging to the colony stands at (156, 171)` with the bed behind her.
  Scenario: 16h30, the teshi awake steps off her bed, a close portrait
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 1310 ticks
    And game speed is paused
    And Nelim's Sanctuary: I am at the sanctuary "water-garden"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "water-garden"
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (156, 172)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (153, 175) fully grown
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (156, 168) facing South
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Nelim's Pickle Tools: a female adult animal of kind "Teshi" named "Mother" is spawned at (156, 172)
    And Nelim's Pickle Tools: "Nelim" stands at (157, 166) facing South
    And Nelim's Pickle Tools: "Mother" is forced to walk to (156, 166)
    And Nelim's Pickle Tools: I advance the paused game by exactly 10 ticks
    When Teshi Renew: the camera looks at (156, 171) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 1.8
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And I take a screenshot "workshop3-2-awake"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 3, 17h00, Clear, MEDIUM root 3.5: the pair nose to nose with hearts, Nelim passes mid-stride with an armful of straw, profile facing East.
  Scenario: 17h00, the parents nose to nose by a lit lantern while Nelim passes with straw
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 2560 ticks
    And game speed is paused
    And Nelim's Sanctuary: I am at the sanctuary "water-garden"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "water-garden"
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (156, 172)
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (161, 171)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (161, 171) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (153, 171) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (153, 170) fully grown
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (152, 174) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Teshi Renew: a female adult teshi belonging to the colony stands at (158, 172)
    And Teshi Renew: a male adult teshi belonging to the colony stands at (160, 172)
    And Teshi Renew: the female adult teshi and the male adult teshi mate
    And Nelim's Pickle Tools: "Nelim" stands at (152, 174) facing East
    And Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Hay" to (157, 174)
    And Nelim's Pickle Tools: I advance the paused game by exactly 30 ticks
    When Teshi Renew: the camera looks at (158, 173) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3.5
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And I take a screenshot "workshop3-3-the-parents"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 4, 17h30, Clear, MEDIUM-CLOSE root 3.2: the mother on her bed in the nest, the egg in its box, Nelim reaches the nest with the straw (pause mid-stride, about 35 ticks).
  # Plan B if the hay covers her face again: carry "Meat_Chicken" and change the subtitle to a meal.
  Scenario: 17h30, the mother at her nesting box while Nelim reaches the nest with straw
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 3810 ticks
    And game speed is paused
    And Nelim's Sanctuary: I am at the sanctuary "calm-zone"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (216, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (216, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 186)
    And Nelim's Pickle Tools: the plants from (214, 184) to (218, 186) are fully grown
    And Nelim's Pickle Tools: I place the decor "EggBox" at (217, 185)
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (213, 186)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (213, 186) is lit
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (208, 185) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Teshi Renew: a female adult teshi belonging to the colony stands at (215, 185)
    And Teshi Renew: a "EggTeshiFertilized" lies at (217, 185)
    And Nelim's Pickle Tools: "Nelim" stands at (208, 185) facing East
    And Nelim's Pickle Tools: "Nelim" is forced to haul 1 of the item "Hay" to (212, 185)
    And Nelim's Pickle Tools: I advance the paused game by exactly 45 ticks
    When Teshi Renew: the camera looks at (213, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3.2
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And I take a screenshot "workshop3-4-the-nesting-box"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 5, 18h00, Clear, TIGHT root 2.3: the egg has hatched, the kit is placed below the empty box on bare soil (no grass at (216, 184) and (217, 184)), Nelim hurries over mid-stride.
  Scenario: 18h00, the egg hatches and Nelim hurries over to the kit beside its mother
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 5060 ticks
    And game speed is paused
    And Nelim's Sanctuary: I am at the sanctuary "calm-zone"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 184)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 185)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (216, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 186)
    And Nelim's Pickle Tools: the plants from (214, 184) to (218, 186) are fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (213, 184) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (213, 185) fully grown
    And Nelim's Pickle Tools: I place the decor "EggBox" at (217, 185)
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (213, 186)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (213, 186) is lit
    And Teshi Renew: a "EggTeshiFertilized" lies at (217, 185)
    When Teshi Renew: the eggs on the map are one tick from hatching
    And game speed is ultrafast
    And Teshi Renew: I wait for the eggs to hatch
    And game speed is paused
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (209, 185) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Nelim's Pickle Tools: the newborn animal of kind "Teshi" is named "Kit"
    And Nelim's Pickle Tools: the animal "Kit" stands at (217, 184)
    And Teshi Renew: a female adult teshi belonging to the colony stands at (215, 185)
    And Nelim's Pickle Tools: "Nelim" stands at (209, 185) facing East
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (212, 185)
    And Nelim's Pickle Tools: I advance the paused game by exactly 10 ticks
    And Teshi Renew: the camera looks at (215, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2.3
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" brows are "BrowRaised"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And I take a screenshot "workshop3-5-the-hatching"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 6, 18h30, Clear, MEDIUM root 2.8: Nelim holds out the meal, the kit steps up, the mother watches. As run f5d5 (accepted at 4); only the shirt colour and the root size change.
  Scenario: 18h30, Nelim feeds the kit by hand at a bare corner with daylilies
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 6310 ticks
    And game speed is paused
    And Nelim's Sanctuary: I am at the sanctuary "calm-zone"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "calm-zone"
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (213, 186)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (213, 186) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (209, 183) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (211, 183) fully grown
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (208, 185) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Teshi Renew: a female kit teshi stands at (210, 185)
    And Teshi Renew: a female adult teshi belonging to the colony stands at (212, 184)
    And Nelim's Pickle Tools: "Nelim" stands at (208, 185) facing East
    And Teshi Renew: the colonist "Nelim" carries 1 "Meat_Chicken"
    When Teshi Renew: the camera looks at (210, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2.8
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" facial expression is "normal"
    And I take a screenshot "workshop3-6-the-first-meal"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
