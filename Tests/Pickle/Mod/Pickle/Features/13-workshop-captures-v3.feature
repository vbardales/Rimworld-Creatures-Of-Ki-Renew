# THIRD SERIES, SHOTLIST REWORKED 2026-10-25 against GALLERY.md of 2026-10-23 and 2026-10-25 (AUDIT 9.0). The scenarios below were rewritten from this header the same day (Check-Steps.ps1 green, nothing played).
# Candidates only: the published gallery (1-portrait to 6-the-infirmary-health-tab) changes only with Virginie's word. Image 7 is the published image, not replayed.
# Previous run (verdicts on the 2026-10-18 plan): image 3 3.5 (Nelim seen from behind), 4 3 (hay over her face), 5 2 (empty box, no kit in frame), 6 4 (run f5d5, Evidence/gallery-v3-6b); images 1 and 2 never produced a report.
#
# STORY (one evening, Nelim is the protagonist, the teshi family are her guests; the day is the fixture's own, 4th of September 5500, permanent summer): on a clear late afternoon Nelim comes down to the pond to
# watch over a teshi that sleeps by day, and stays with it through the dusk: the waking, the courting of the pair, the straw she carries to the nest, the egg, the hatching, the first meal from her hand, and the night
# at the tea-house infirmary where a cut claw meets a bionic arm. She always moves or faces East: the pond is at x about 156, the nest at x about 213, so the series reads as one journey from the bank to the nest.
# TIME: one start hour (16h), then 30 game minutes per image (1 250 ticks, cumulative): waits 60, 1310, 2560, 3810, 5060, 6310 ticks; image 7 at 19h30 (8810). Every Scenario reloads the save, so each sets 16h again,
# waits its own total, then places what lives in the scene after the wait. The teshi is crepuscular: asleep at 16h, awake and active from 16h30.
# WEATHER: `I set the weather to "Clear"` in the Background, held on purpose for the whole series (dusk comes from the hour and the lanterns; rain or fog would hide the animals). The lit lantern is the dusk marker: none in image 1, the first one lit in image 2 (v26, 16h30 is already dim and the frame needs a light source), then a second light from image 4 (TorchLamp), a Brazier in image 6 (the light ramp of the Opus pass, 2026-11-08).
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
#     water-garden, west bank, 16h00, Clear, 60 ticks of set-up only; MEDIUM-WIDE, root 2.8, centre (157, 173), frame x 152.0 to 162.0, z 170.2 to 175.8 (the opening image; reworked 2026-11-06 v23: v22 at root 3.2 cut Nelim by the left edge and left the right half empty)
#     the mother asleep on a large bed, Nelim arriving at its side; says: by day she sleeps, and someone watches over her
#     instant: Nelim has just come down the bank and slows at the bedside; next she stops and watches
#     method: `Nelim stands at (154, 174) facing East`, `Nelim is forced to walk to (157, 174)` (row 174 was walked green in image 3), `I advance the paused game by exactly 30 ticks, about 2.5 cells` (v23: after 20 ticks from (153, 174) she was still at x 152.5 on the frame edge, so she starts one cell further East and walks longer), game paused: mid-stride, profile, she ends between x 154 and 156.5, whole inside the frame either way
#     the mother asleep (lies down to sleep) on the left third; lily pads and the pond fill the right, the bank is the foreground
#     Nelim: the evening outfit (above); NO smile required, written on purpose: wide opener, face under 40 px, she watches the mother with eyes down (v22: eyes closed, nothing readable at this size)
#     GSAnimalBedBigPrestige at (156, 172); Plant_Daylily fully grown at (153, 175)
#     Animal.BedsNew; steps of series 2 plus `is forced to walk to`; story scene; "Nelim comes down to the water to watch over the sleeping teshi."
#     ESTIMATE 4.5. Risk: the sleeping mother is still a pale shape (about 55 px at 268 px at root 2.8, accepted for the opener, Nelim is the second reading), criterion j weak. Plan: tighter root 2.8 and centre moved so Nelim is whole and the right half is not empty. Director pass 2026-11-06 (v23) kept: centre z 173 so her head at row 174 is not cut by the top edge, walk kept (the mid-play moment), no smile written. Refused: a darker bed or soil (no recolour step known).
#
#  2  workshop3-2-awake
#     water-garden, west bank, 16h30, Clear, 1 310 ticks; TIGHT front portrait, root 2.4, centre (157, 172), frame x 152.7 to 161.3, z 169.6 to 174.4 (reworked 2026-11-06 v23: at root 1.8 Nelim at (154, 170) was outside the frame by geometry)
#     the mother awake on her bed, head up, face to the camera, Nelim whole at the left of the frame looking toward her; says: the head, the four banded ears, the tail
#     instant: she has just woken and lifts her head toward Nelim; next she stands up
#     method: `Nelim stands at (154, 171) facing East` and `waits in place` (NPT steps.md l.260, no walk), `I let 120 ticks pass` (the dress-up ticks), THEN `a female adult teshi belonging to the colony stands at (156, 172)` on the bed (no lie-down, no walk: a walking teshi shows the top of its head, a teshi on the bed shows its face), then the held `normal+moodCheerful` smile, screenshot (the order of image 6, which smiled clean; Opus: do not skip the ticks, the held expression needs them before it)
#     Nelim: whole, at the left, in the evening outfit, smile held; a witness, her face is about 15 px at 268 px so the smile is not the point (the mother is the subject)
#     decor (v26, 2026-11-08, dense: v23 scored decoration 3.5, flat grey water and bare soil; Opus pass: dress the north and east edges, keep the south of the subjects clear, one small light): GSAnimalBedBigPrestige at (156, 172) behind the mother; Plant_Daylily fully grown at (159, 171), (159, 173), (160, 173); DR_StickLantern lit at (160, 171) (first light of the evening, 16h30 already dim); Stool at (153, 172) behind Nelim (she has just stood up to wait); PlantPot_Bonsai at (153, 170); a band of Plant_YellowTallGrass fully grown at (153, 174) to (158, 174) along the north bank. Refused by Opus: grass beside Nelim (covers her legs), a Brazier by the pond in daylight, anything on the water.
#     kind defName `Teshi` (read in Mod/Defs/ThingDefs_Races/Races_Animal_Teshi.xml); steps of the Pickle Tools catalogue; story scene; "Awake, she lifts her head toward Nelim."
#     Plan B: `Teshi Renew: a female adult teshi belonging to the colony stands at (156, 171)` with the bed behind her.
#     ESTIMATE 4.5. Risk: criterion e weak, the mother sits upright and reads as posed (v22); the raised head is the only gesture. Director pass 2026-11-06 (v23) kept: root 2.4 centre (157, 172) so Nelim is whole, wait in place then ticks then held smile. Not done: a walk for the mother (shows the top of her head).
#  3  workshop3-3-the-parents
#     water-garden, west bank, 17h00, Clear, 2 560 ticks; MEDIUM, root 3.3, centre (158, 173), frame x 152.15 to 163.85 (v23: root 3.5 centre 158 started at x 151.8, past the geyser rule)
#     the pair nose to nose with hearts, Nelim watching; says: the courting, at the start of the dusk
#     instant: the pair has just met nose to nose and Nelim, who stopped on the bank, watches; next the male turns away (v22: the carried hay hid her face, the straw goes to image 4 only)
#     method: `Nelim stands at (153, 174) facing East` and `waits in place`, `I let 120 ticks pass` (the dress-up ticks), female at (158, 172), male at (160, 172), mate step, then the held `normal+moodCheerful` smile, screenshot (no haul, no carried item, no walk: the face is not hidden)
#     the two adults mate (hearts) in the middle; the empty bed at the left is where she slept
#     Nelim: the evening outfit, smile held, profile facing East; it may not read at this size (written: witness in profile, the pair is the subject)
#     DR_StickLantern lit at (161, 171); Plant_Daylily fully grown at (153, 171), (153, 170); GSAnimalBedBigPrestige at (156, 172) empty
#     Mlie.StickLantern, Animal.BedsNew; story scene; "The parents meet nose to nose while Nelim watches."
#     ESTIMATE 5. Risk: Nelim reads small and in profile at 268 px; the pair and the hearts are the subject. Director pass 2026-11-06 (v23) kept: root 3.3 centre (158, 173), no hay. Refused: the haul with Meat_Chicken (the story keeps the straw for image 4).
#
#  4  workshop3-4-the-nesting-box
#     calm-zone, east of the cream square, 17h30, Clear, 3 810 ticks; MEDIUM-CLOSE, root 3.2, centre (213, 185)
#     the mother on her bed in a nest of yellow grass, the egg in its box, Nelim beside the nest; says: she settles on the nest as the light goes, and Nelim watches over her
#     instant: Nelim waits in place at (212, 185) facing East, smile held, hands empty (v25: v24 carried hay, which gave her a sweat drop and a forbidden X on the hay; images 3 and 5 wait in place and are clean)
#     method: `Nelim stands at (212, 185) facing East` before and after the mother and the egg are placed, `I let 120 ticks pass`, no haul, thermal state logged and `"Nelim" facial expression "normal+moodCheerful" is held` as in images 3 and 5
#     the mother from the front on her bed
#     Nelim: the evening outfit, smile
#     decor (v26, 2026-11-08, dense: v25 scored decoration 3.5, bare brown soil around one grass patch; Opus pass kept): Plant_YellowTallGrass 3 x 5 at (214 to 218, 184 to 186) minus (216, 185), fully grown, plus a north row at (213, 187) to (218, 187) fully grown (the nest sits in a meadow, nothing south of Nelim); Plant_Daylily fully grown at (209, 188), (210, 188), (219, 183), (219, 187) in the bare corners; TorchLamp lit at (209, 183) (second light, dusk); EggBox (217, 185); GSAnimalBedBigPrestige (215, 185); DR_StickLantern lit (213, 186) (kept for continuity with images 5 and 6). Refused by Opus: a third light, stack counters, grass at x 211 to 212 (would clip Nelim at (212, 185)).
#     steps played in series 2; story scene; "Nelim watches over the mother at her nesting box."
#     ESTIMATE 4.5. Risk: Nelim reads small in profile; plan: same spot and held expression as image 5 (4.5).
#
#  5  workshop3-5-the-hatching
#     calm-zone, same corner, 18h00, Clear, 5 060 ticks; TIGHT, root 2.4, centre (215, 185), frame x 210.7 to 219.3, z 182.6 to 187.4 (v23: v22 at root 2.3 centre (214, 185) put Nelim at the edge, outside the frame)
#     the egg has hatched, the kit stands below the empty box beside its mother; says: it is born at dusk, by the mod's own hatching
#     instant: the egg has just hatched and Nelim hurries over; next she reaches the kit
#     method: eggs one tick from hatching, wait for the hatch, `Nelim stands at (212, 185) facing East` and `waits in place` (reached green in v22, no walk, so no sweat), the 120 dress-up ticks, the newborn is named, `I let 10 ticks pass`, THEN `a female kit teshi stands at (217, 184)` (plan A, the named newborn `"Kit" stands at`, fails if the hatcher named it) FACING WEST toward Nelim (Opus: facing South risks the back of the head, the front view is already shown by the mother and by image 2), mother at (215, 185), held `normal+BrowRaised` smile, nothing ticks after
#     the kit in side silhouette and the mother from the front; BrowRaised and a smile on Nelim, her eyes toward the kit
#     Nelim: the evening outfit, BrowRaised, MouthSmile (written)
#     the nest of image 4 minus the grass at (216, 184), (217, 184) (the kit stands on bare soil for contrast), Plant_Daylily fully grown at (213, 184), (213, 185), the same lantern; the egg gone
#     hatcher steps played in series 2; story scene; "The kit hatches beside its mother."
#     ESTIMATE 4.5. Risk: criterion j weak, the kit is small and pale on soil (about 25 px at 268 px at root 2.4). Director pass 2026-11-06 (v23) kept: root 2.4 centre (215, 185), Nelim waits at (212, 185), kit faces West. To check on the capture: (217, 184) is standable and clear, the kit really faces West (the facing step is NPT's, not played on a kit). Refused: facing South.
#
#  6  workshop3-6-the-first-meal (closing story image)
#     calm-zone, west of the nest, 18h30, Clear, 6 310 ticks; MEDIUM, root 2.8, centre (211, 185) (v26: was (210, 185); widened from 2.2 so the dusk and the lantern show)
#     Nelim holds out a piece of meat, the kit comes to her, the mother watches; says: the first meal, and that the teshi lives with people
#     instant: she has just held out the meal and the kit steps up; next it eats
#     method: as run f5d5 (Nelim stands at (208, 185) facing East, carries 1 Meat_Chicken, kit placed at (210, 185), mother at (212, 184)), only the shirt colour and the root size change
#     the kit approaches, the mother looks on
#     Nelim: the evening outfit, smile
#     decor (v26, 2026-11-08, dense: v22 scored decoration 3.5, right half bare soil; Opus pass kept; centre moved to (211, 185) so the nest bed shows at the right edge): DR_StickLantern lit (213, 186); Plant_Daylily fully grown at (209, 183), (211, 183) (no pot: a pot and its plant cannot share a cell, run 551e); a band of Plant_YellowTallGrass fully grown at (210, 186) to (214, 187) minus the lantern cell, behind the mother and north of the feeding row; the empty nest of image 4, GSAnimalBedBigPrestige (215, 185) and EggBox (217, 185) (story link: the nest she has left); Brazier lit at (206, 186), Stool at (207, 187) (she has been feeding the kit all evening). Refused by Opus: anything on row 184 between x 208 and 210 or in the space between the meat, the kit and the mother (the gesture is the image).
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
@review @slow @timeout:1800 @requires:SamBucher.ADogSaidAnimalProsthetics2 @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor
Feature: the images of the Workshop page, third series (one evening, Nelim the protagonist, scenarios written from the 2026-10-25 header)

  Background:
    Given the save "Nelims-tribe" is loaded
    And I set the weather to "Clear"

  # Image 1 (v23), 16h00, Clear, root 2.8, centre (157, 173), x 152.0 to 162.0: the mother asleep on the bed, Nelim whole at the left, arrives mid-stride (starts (154, 174), forced walk to (157, 174), 30 ticks = about 2.5 cells, pause). No smile required (wide opener, face under 40 px); the held expression stays in the steps.
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
    And Nelim's Pickle Tools: "Nelim" stands at (154, 174) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Teshi Renew: a female adult teshi belonging to the colony stands at (156, 172)
    And Teshi Renew: the female adult teshi lies down to sleep
    And Nelim's Pickle Tools: "Nelim" stands at (154, 174) facing East
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (157, 174)
    And Nelim's Pickle Tools: I advance the paused game by exactly 30 ticks
    When Teshi Renew: the camera looks at (157, 173) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2.8
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: the thermal state and thoughts of "Nelim" are logged
    And Nelim's Pickle Tools: "Nelim" facial expression "normal+moodCheerful" is held
    And Nelim's Pickle Tools: "Nelim" face state is logged
    And I take a screenshot "workshop3-1-the-watch"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 2 (v23), 16h30, Clear, TIGHT root 2.4, centre (157, 172), x 152.7 to 161.3: the mother awake on her bed, head up, face to the camera (a walking teshi shows the top of its head, a teshi on the bed shows its face). Nelim whole at the left (154, 171), waits in place (no walk), smile held.
  # Plan B if the named spawn or `follows` fails: `Teshi Renew: a female adult teshi belonging to the colony stands at (156, 171)` with the bed behind her.
  Scenario: 16h30, the teshi awake lifts her head on her bed, a close portrait
    Given I set the hour to 16
    And game speed is ultrafast
    And I wait 1310 ticks
    And game speed is paused
    And Nelim's Sanctuary: I am at the sanctuary "water-garden"
    And Nelim's Sanctuary: the animals are removed from the sanctuary "water-garden"
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (156, 172)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (159, 171) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (159, 173) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (160, 173) fully grown
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (160, 171)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (160, 171) is lit
    And Nelim's Pickle Tools: I place the decor "Stool" at (153, 172)
    And Nelim's Pickle Tools: I place the decor "PlantPot_Bonsai" at (153, 170)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (153, 174)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (154, 174)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (155, 174)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (156, 174)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (157, 174)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (158, 174)
    And Nelim's Pickle Tools: the plants from (153, 174) to (158, 174) are fully grown
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (154, 171) facing East
    And Nelim's Pickle Tools: "Nelim" waits in place
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Teshi Renew: a female adult teshi belonging to the colony stands at (156, 172)
    When Teshi Renew: the camera looks at (157, 172) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2.4
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" facial expression "normal+moodCheerful" is held
    And Nelim's Pickle Tools: "Nelim" face state is logged
    And I take a screenshot "workshop3-2-awake"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 3 (v23), 17h00, Clear, MEDIUM root 3.3, centre (158, 173), x 152.15 to 163.85: the pair nose to nose with hearts, Nelim stopped on the bank at (153, 174) watching, profile facing East, waits in place (no haul: the carried hay hid her face in v22; the straw is for image 4), smile held.
  Scenario: 17h00, the parents nose to nose by a lit lantern while Nelim watches
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
    And Nelim's Pickle Tools: "Nelim" stands at (153, 174) facing East
    And Nelim's Pickle Tools: "Nelim" waits in place
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Teshi Renew: a female adult teshi belonging to the colony stands at (158, 172)
    And Teshi Renew: a male adult teshi belonging to the colony stands at (160, 172)
    And Teshi Renew: the female adult teshi and the male adult teshi mate
    When Teshi Renew: the camera looks at (158, 173) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3.3
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: the thermal state and thoughts of "Nelim" are logged
    And Nelim's Pickle Tools: "Nelim" facial expression "normal+moodCheerful" is held
    And Nelim's Pickle Tools: "Nelim" face state is logged
    And I take a screenshot "workshop3-3-the-parents"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 4 (v25), 17h30, Clear, MEDIUM-CLOSE root 3.2 centre (214, 185): the mother on her bed in the nest, the egg in its box, Nelim waiting in place at (212, 185) facing East, smile held, no carried item (v24: the haul gave her a sweat drop and a forbidden X on the hay; image 3 and 5 wait in place and are clean).
  # Story: she has brought the straw earlier and now watches the mother settle on the nest.
  Scenario: 17h30, the mother at her nesting box while Nelim watches from beside the nest
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
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (213, 187)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 187)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (215, 187)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (216, 187)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (217, 187)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (218, 187)
    And Nelim's Pickle Tools: the plants from (214, 184) to (218, 186) are fully grown
    And Nelim's Pickle Tools: the plants from (213, 187) to (218, 187) are fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (209, 188) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (210, 188) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (219, 183) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (219, 187) fully grown
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (209, 183)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (209, 183) is lit
    And Nelim's Pickle Tools: I place the decor "EggBox" at (217, 185)
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "DR_StickLantern" at (213, 186)
    And Nelim's Pickle Tools: the decor "DR_StickLantern" at (213, 186) is lit
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (212, 185) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Teshi Renew: a female adult teshi belonging to the colony stands at (215, 185)
    And Teshi Renew: a "EggTeshiFertilized" lies at (217, 185)
    And Nelim's Pickle Tools: "Nelim" stands at (212, 185) facing East
    When Teshi Renew: the camera looks at (214, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 3.2
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: the thermal state and thoughts of "Nelim" are logged
    And Nelim's Pickle Tools: "Nelim" facial expression "normal+moodCheerful" is held
    And Nelim's Pickle Tools: "Nelim" face state is logged
    And I take a screenshot "workshop3-4-the-nesting-box"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 5 (v23), 18h00, Clear, TIGHT root 2.4, centre (215, 185), x 210.7 to 219.3: the egg has hatched, the kit is placed below the empty box on bare soil (no grass at (216, 184) and (217, 184)) facing West toward Nelim, who waits in place at (212, 185) (no walk, no sweat), BrowRaised and a smile held.
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
    And Nelim's Pickle Tools: "Nelim" stands at (212, 185) facing East
    And Nelim's Pickle Tools: "Nelim" waits in place
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Nelim's Pickle Tools: the newborn animal of kind "Teshi" is named "Kit"
    And Nelim's Pickle Tools: I let 10 ticks pass
    And Nelim's Pickle Tools: the animal "Kit" stands at (217, 184) facing West
    And Teshi Renew: a female adult teshi belonging to the colony stands at (215, 185)
    And Teshi Renew: the camera looks at (215, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2.4
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" brows are "BrowRaised"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: the thermal state and thoughts of "Nelim" are logged
    And Nelim's Pickle Tools: "Nelim" facial expression "normal+moodCheerful" is held
    And Nelim's Pickle Tools: "Nelim" face state is logged
    And I take a screenshot "workshop3-5-the-hatching"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged

  # Image 6, 18h30, Clear, MEDIUM root 2.8: Nelim holds out the meal, the kit steps up to her hand (one cell away), the mother watches. Smile held to the screenshot (NPT held expression), face state logged.
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
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (210, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (211, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (212, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 186)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (210, 187)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (211, 187)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (212, 187)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (213, 187)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (214, 187)
    And Nelim's Pickle Tools: the plants from (210, 186) to (214, 187) are fully grown
    And Nelim's Pickle Tools: I place the decor "GSAnimalBedBigPrestige" at (215, 185)
    And Nelim's Pickle Tools: I place the decor "EggBox" at (217, 185)
    And Nelim's Pickle Tools: I place the decor "Brazier" at (206, 186)
    And Nelim's Pickle Tools: the decor "Brazier" at (206, 186) is lit
    And Nelim's Pickle Tools: I place the decor "Stool" at (207, 187)
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: "Nelim" stands at (208, 185) facing East
    And Nelim's Pickle Tools: "Nelim" body type is Female
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_HD_Hair_Highpony"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (51, 33, 16)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CollarShirt" dyed rgb (126, 150, 118)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (70, 56, 44)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Teshi Renew: a female kit teshi stands at (209, 185)
    And Teshi Renew: a female adult teshi belonging to the colony stands at (212, 184)
    And Nelim's Pickle Tools: "Nelim" stands at (208, 185) facing East
    And Teshi Renew: the colonist "Nelim" carries 1 "Meat_Chicken"
    When Teshi Renew: the camera looks at (211, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2.8
    And Teshi Renew: I let 10 frames pass
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthSmile"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Nelim's Pickle Tools: "Nelim" facial expression "normal+moodCheerful" is held
    And Nelim's Pickle Tools: "Nelim" face state is logged
    And I take a screenshot "workshop3-6-the-first-meal"
    And Teshi Renew: the camera's zoom limits are restored
    Then no warnings from mod "Creatures of Ki - Teshi Renew"
    And no errors were logged
