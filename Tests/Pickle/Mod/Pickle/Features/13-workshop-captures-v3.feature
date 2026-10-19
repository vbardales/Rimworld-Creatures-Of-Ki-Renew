# THIRD SERIES (shotlist of 2026-10-18, revised the same day after Audit's reading, gallery reopened for 1.1.1, AUDIT 9.0, GALLERY.md "Shotlist : critères d'une scène à 4/5"). NOTHING IS PLAYED YET:
# no Scenario below until every scene is 4 or more (it is). Candidates only: the published gallery (1-portrait to 6-the-infirmary-health-tab) changes only with Virginie's word.
#
# WHAT THE SECOND SERIES LACKED (read against its own images, 2026-10-18): Nelim, the protagonist of every Sanctuary series, is in none of its five story images;
# the dark burrow hole at (149, 173) of water-garden shows in three of them (1, 2, 5), a known anomaly of the place (GALLERY-PROPS.md: keep clear);
# the kit of the hatching sits small in its box. The third series answers those three.
#
# STORY (one evening, Nelim is the protagonist, the teshi family are her guests; the day is the fixture's own, 4th of September 5500, permanent summer): on a clear late afternoon Nelim comes down to the pond to watch over a teshi that
# sleeps by day, and stays with it through the dusk: the waking, the courting of the pair, the nest she helps to build with hay, the egg, the hatching,
# the first meal from her hand, and the night at the tea-house infirmary where a cut claw meets a bionic arm.
# TIME: one start hour (16h), then 30 game minutes per image (1 250 ticks, cumulative), as the second series. Every Scenario reloads the save, so each sets 16h again,
# waits its own total, then places what lives in the scene after the wait. The teshi is crepuscular: asleep at 16h, awake and active from 16h30.
# WEATHER: `I set the weather to "Clear"` in the Background and held on purpose for the whole series: the dusk comes from the hour and the lanterns, and rain or fog would hide
# the animals and the pond (decided 2026-10-18; every scene below says it again so none is left to chance).
# NELIM: one hairstyle for the whole evening, `Bob`, dark brown hair rgb (62, 44, 32), brown eyes (fixture default); she dresses for each hour, so the outfit changes in every scene (colours below),
# and so does her expression. Steps: `body type is Female`, `wears <def> dyed rgb`, `hairstyle is`, `hair colour is rgb`, face parts (`Nelim has her own face` for the smirk).
# FRAMING RULE of water-garden: the hole at (149, 173) stays out of frame, so every pond image is centred east of x 154 at root size 3.5 or less.
# FRONT VIEWS: images 2, 4 and 5 show the teshi from the front; image 5 shows the kit's face.
# DECOR: never the same set twice; each image builds its own and removes it (`the decor is removed`). Images 4, 5 and 6 share a corner of the calm-zone but not their decor.
#
# SHOTLIST. Fields: index and file | place, hour, weather, time passing | subject, what it says | composition | living things and action | Nelim (outfit, hair, face) |
#           decor with defNames | mods and steps | type, subtitle | ESTIMATE /5, risk, plan against the risk
#
#  1  workshop3-1-the-watch
#     water-garden, west bank, 16h00, Clear, 60 ticks of set-up only (the first image of the series)
#     the mother asleep on a large bed, Nelim keeping watch; says: by day she sleeps, and someone watches over her
#     wide-ish, root 3.5, frame centred on (157, 172), bed centre-right, Nelim at the left edge, lily pads behind; no hole in frame
#     the mother asleep (lies down to sleep), Nelim stands facing East at (153, 172), a quiet watcher
#     Nelim: cream BasicShirt (236, 226, 200), brown Pants (96, 80, 62), Bob, calm neutral face (MouthNormal, held neutral)
#     GSAnimalBedBigPrestige at (156, 172); a flower pot with Plant_Daylily fully grown at (153, 174)
#     Animal.BedsNew; steps all played in series 2; story scene; "Nelim keeps watch over the sleeping teshi."
#     ESTIMATE 4. Risk: Nelim's face and pose beside the bed (new combination). Plan: face steps proven on the Sanctuary; run the scene on its own first, open it, redo the pose if she hides the bed.
#
#  2  workshop3-2-awake
#     water-garden, west bank, 16h30, Clear, 1 310 ticks
#     the mother awake, a close front portrait; says: the head, the four banded ears, the tail
#     close, root 1.8, subject slightly left of centre, lily pads right, frame centred on (156, 172); the hole out of frame
#     the mother awake, from the front; Nelim not in frame (an animal portrait; she is the story of the other six)
#     decor: a single tuft of tall grass already on the bank; nothing placed
#     steps played in series 2 (this is its image 2 recentred); story scene; "Awake, she watches the pond."
#     ESTIMATE 5. Risk: none beyond the recentring. Plan: same shot as the accepted one, only the camera moves east.
#
#  3  workshop3-3-the-parents
#     water-garden, west bank, 17h00, Clear, 2 560 ticks
#     the pair nose to nose, hearts, a lit lantern; says: the courting, at the start of the dusk
#     off-centre left, root 3.5, frame centred on (157, 172), lantern bottom-right, daylilies upper left; no hole
#     the two adults mate (hearts) in the middle; Nelim at the bottom-left edge, hands at her sides, watching the pair
#     Nelim: sage-green CollarShirt (126, 150, 118), dark brown Pants (70, 56, 44), Bob, her own face (MouthSmirkSmile)
#     DR_StickLantern lit at (159, 171); Plant_Daylily fully grown at (154, 174), (154, 175)
#     Mlie.StickLantern; steps played in series 2; story scene; "The parents meet nose to nose by a lit lantern."
#     ESTIMATE 4. Risk: three living things in one frame (hearts read, Nelim crowds). Plan: Nelim at the edge, partly cropped is fine; if it crowds, the camera goes to root 3.0 and Nelim steps out to the bank's east side.
#
#  4  workshop3-4-the-nesting-box
#     calm-zone, east of the cream square, 17h30, Clear, 3 810 ticks
#     the mother on her bed in a nest of yellow grass, the egg in its box, Nelim bringing hay; says: she builds the nest as the light goes, and Nelim helps
#     close and low, root 3.2, subject left of centre, lantern at left, Nelim entering from the left edge
#     the mother from the front on her bed; Nelim carries 1 `Hay` (vanilla Core, verified in `Items_Resource_RawPlant.xml`, 2026-10-18) toward the nest
#     Nelim: rust BasicShirt (176, 98, 64) under a tan Jacket (172, 142, 100), brown Pants (92, 74, 58), Bob, soft smile (MouthSmile, LidNormal)
#     Plant_YellowTallGrass 3 x 5 fully grown, EggBox (217, 185), GSAnimalBedBigPrestige (215, 185), DR_StickLantern lit (213, 186)
#     steps played in series 2 and the scene "carries 1 <def>"; story scene; "The mother settles at her nesting box, Nelim brings hay."
#     ESTIMATE 4. Risk: Nelim and the lantern overlap on the left; hay icon small. Plan: Nelim at (210, 185) leaves the lantern's column free, root 3.2 keeps the hay at about 60 px; if it reads as nothing the carried item is Meat_Chicken as in image 6 and the line changes.
#
#  5  workshop3-5-the-hatching
#     calm-zone, same corner, 18h00, Clear, 5 060 ticks
#     the egg hatches, the kit beside its mother; says: it is born at dusk, by the mod's own hatching
#     close, root 2.3 (series 2 held the kit small at 1.9), kit and mother both in frame, kit in front of the box, Nelim's hands at the left edge
#     the kit and the mother, both from the front; Nelim stands facing East at (211, 185), watching
#     Nelim: teal CollarShirt (70, 128, 132), dark Pants (60, 52, 48), no hat (Audit's hat rule, 2026-10-18: a Bob under a hat hides), Bob, raised brows and a smile (BrowRaised, MouthSmile)
#     same nest as image 4 plus two Plant_Daylily fully grown at (213, 184), (213, 185); the egg gone; the same lantern
#     hatcher steps played in series 2; story scene; "The kit hatches beside its mother."
#     ESTIMATE 4. Risk: the kit reads small and pale on the yellow grass. Plan: root 2.3 and the daylilies' orange behind it for contrast; if it still reads small, root 2.0 with Nelim dropped from the frame (her image is 6).
#
#  6  workshop3-6-the-first-meal
#     calm-zone, west of the nest, 18h30, Clear, 6 310 ticks
#     Nelim holds out a piece of meat, the kit comes to her, the mother watches; says: the first meal, and that the teshi lives with people
#     root 2.2, Nelim at the left, the kit at the centre, the mother at the right, the lantern top-right
#     the kit approaches, the mother looks on (lies by the pot); Nelim carries 1 `Meat_Chicken` and faces East
#     Nelim: mustard BasicShirt (214, 176, 76), brown Pants (92, 76, 60), Bob, a smile (MouthSmile, LidCheerful)
#     DR_StickLantern lit (213, 186); Plant_Daylily fully grown at (209, 183) and (211, 183) (no pot: a pot and its plant cannot share a cell, run 551e); no nest grass (the corner is bare, another look)
#     steps all played in series 2 (the scene was played, not kept, reason not recorded); story scene; "Nelim feeds the kit by hand."
#     ESTIMATE 4. Risk: the earlier capture was dropped with no recorded reason. Plan: play it alone as the first ticket, open it, and choose between the two renderings before anything else is filed.
#
#  7  workshop3-7-the-infirmary-health-tab
#     hut (the tea-house as animal infirmary), 19h30, Clear, 8 810 ticks
#     the Health tab on the injured teshi; says: the body names each claw and ear, and the mod gives it a bionic arm (ADS2)
#     interface kept (colonist bar, learning helper, tooltips hidden), root 3.4, as the second series; the published image stands
#     the injured teshi asleep on its bed (cut claw, bionic arm), Nelim at its feet facing North
#     Nelim: white BasicShirt (244, 242, 234), Pants (110, 96, 78), Bob, normal face (published)
#     GSAnimalBedBig (141, 72), DR_StickLantern lit (143, 73), two blue braziers of the hut
#     needs SamBucher.ADogSaidAnimalProsthetics2; steps played in series 2; interface window on a staged scene, no scoring needed (put aside); "A cut claw, and a bionic arm."
#     ESTIMATE 5. Risk: none new; the published image stays unless the owner asks otherwise.
#
# SERIES SCORE: 4 of 5. Strong points: one story that moves forward and is written once (k), Nelim in six of seven shots in six different outfits and faces, weather and hour set in every
# scene, every image has living things and a reason for its decor, decor differs per scene, no catalogue plate, the whole offer of the mod shown (variants of life, nesting, hatching,
# the menu, the ADS2 integration), a risk with its plan on every line. Weak points: images 3 and 6 (crowding, a dropped capture).
# AFTER A RUN: put the real verdict of each capture (accept or refuse) next to the estimate in STATUS.md; the gap is what the next shotlist learns from.
# MODS (pass map wsl-deps.sanctuary.map, nothing challenged): Animal.BedsNew 3107972819, Mlie.StickLantern 2024351846, the body and facial mods of the Sanctuary map, ADS2 (image 7 only).
# STEPS: all exist (series 2); no new step is asked of NPT. Filter: any ticket on a pass other than wsl-deps.sanctuary.map excludes this suite (`!13-workshop-captures-v3`).
@review @slow @timeout:1800 @requires:SamBucher.ADogSaidAnimalProsthetics2
Feature: the images of the Workshop page, third series (image 6 written first, the others follow)

  Background:
    Given the save "Nelims-tribe" is loaded
    And I set the weather to "Clear"

  # Image 6, 18h30, Clear: Nelim feeds the kit by hand, mustard shirt, Bob, smile; bare corner, daylilies in a pot.
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
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Bob"
    And Nelim's Pickle Tools: "Nelim" hair colour is rgb (62, 44, 32)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_BasicShirt" dyed rgb (214, 176, 76)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" dyed rgb (92, 76, 60)
    And Nelim's Pickle Tools: "Nelim" eye colour is rgb (92, 58, 36)
    And Nelim's Pickle Tools: I let 120 ticks pass
    And Teshi Renew: a female kit teshi stands at (210, 185)
    And Teshi Renew: a female adult teshi belonging to the colony stands at (212, 184)
    And Nelim's Pickle Tools: "Nelim" stands at (208, 185) facing East
    And Teshi Renew: the colonist "Nelim" carries 1 "Meat_Chicken"
    When Teshi Renew: the camera looks at (210, 185) at zoom 4
    And Nelim's Pickle Tools: the camera root size is set to 2.2
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
