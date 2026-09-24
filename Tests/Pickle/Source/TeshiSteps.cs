using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using RimWorks.Pickle;
using RimWorld;
using Verse;

namespace TeshiRenew.PickleSteps
{
    /// <summary>
    /// What no stock Pickle step reaches, and what only a running game can show about the teshi: an animal
    /// of a chosen sex and life stage that faces a chosen way, a mated laying done by the game's own job, an
    /// egg that hatches, a dessicated corpse, a body part found by the label the player reads, and the
    /// labels the loaded defs carry in the language of the pass.
    ///
    /// Every phrase starts with "Teshi Renew:". Pickle matches steps on their text alone, across every suite
    /// loaded in a run, so an unprefixed phrase can collide with another suite's.
    ///
    /// Two teshi of the same sex and life stage are never spawned in one scenario, except where a step says
    /// "a row": the steps that name "the female teshi" or "the teshi" fail rather than pick the first of two.
    /// </summary>
    [PickleSteps]
    public sealed class TeshiSteps
    {
        private const string KindDefName = "Teshi";
        private const string FertilizedDefName = "EggTeshiFertilized";
        private const string UnfertilizedDefName = "EggTeshiUnfertilized";

        private static Map Map(PickleContext ctx)
        {
            ctx.Require(Find.CurrentMap != null, "load a map before invoking a Teshi Renew step");
            return Find.CurrentMap;
        }

        private static PawnKindDef Kind(PickleContext ctx)
        {
            var kind = DefDatabase<PawnKindDef>.GetNamedSilentFail(KindDefName);
            ctx.Assert(kind != null, $"no PawnKindDef named {KindDefName}: is the mod loaded?");
            return kind;
        }

        private static ThingDef Def(PickleContext ctx, string defName)
        {
            var def = DefDatabase<ThingDef>.GetNamedSilentFail(defName);
            ctx.Assert(def != null, $"no ThingDef named {defName}");
            return def;
        }

        private static Gender Sex(PickleContext ctx, string word)
        {
            switch (word)
            {
                case "male": return Gender.Male;
                case "female": return Gender.Female;
            }
            ctx.Require(false, $"a teshi is \"male\" or \"female\", not \"{word}\"");
            return Gender.None;
        }

        private static Rot4 Facing(PickleContext ctx, string word)
        {
            switch (word)
            {
                case "north": return Rot4.North;
                case "east": return Rot4.East;
                case "south": return Rot4.South;
                case "west": return Rot4.West;
            }
            ctx.Require(false, $"a facing is north, east, south or west, not \"{word}\"");
            return Rot4.South;
        }

        private static List<Pawn> Teshi(PickleContext ctx)
        {
            return Map(ctx).mapPawns.AllPawnsSpawned.Where(p => p.kindDef != null && p.kindDef.defName == KindDefName).ToList();
        }

        /// <summary>The one spawned teshi. Two would make every later step ambiguous.</summary>
        private static Pawn TheTeshi(PickleContext ctx)
        {
            var found = Teshi(ctx);
            ctx.Assert(found.Count == 1, $"expected exactly one spawned teshi, found {found.Count}");
            return found[0];
        }

        /// <summary>The one adult of a sex. The hatchlings of a scenario never match: they are kits.</summary>
        private static Pawn TheAdult(PickleContext ctx, Gender sex)
        {
            var adultIndex = Kind(ctx).RaceProps.lifeStageAges.Count - 1;
            var found = Teshi(ctx).Where(p => p.gender == sex && p.ageTracker.CurLifeStageIndex == adultIndex).ToList();
            ctx.Assert(found.Count == 1, $"expected exactly one adult {sex} teshi, found {found.Count}");
            return found[0];
        }

        private static Pawn Spawn(PickleContext ctx, Gender sex, string stage, int x, int z, Rot4 rot, bool colony)
        {
            ctx.Require(stage == "adult" || stage == "kit", $"a life stage is \"adult\" or \"kit\", not \"{stage}\"");
            var kind = Kind(ctx);
            var stages = kind.RaceProps.lifeStageAges;
            // The kit is drawn for the first two stages; the middle of the first is unambiguously the young one.
            float age = stage == "kit" ? stages[1].minAge * 0.5f : stages[stages.Count - 1].minAge + 0.5f;
            var request = new PawnGenerationRequest(kind, faction: null, context: PawnGenerationContext.NonPlayer, tile: null,
                forceGenerateNewPawn: true, allowDead: false, canGeneratePawnRelations: false,
                fixedBiologicalAge: age, fixedChronologicalAge: age, fixedGender: sex);
            var pawn = PawnGenerator.GeneratePawn(request);
            GenSpawn.Spawn(pawn, new IntVec3(x, 0, z), Map(ctx), rot);
            if (colony) pawn.SetFaction(Faction.OfPlayer);

            ctx.Assert(pawn.gender == sex, $"asked for a {sex} teshi, the game made a {pawn.gender} one");
            var expectedIndex = stage == "kit" ? 0 : stages.Count - 1;
            ctx.Assert(pawn.ageTracker.CurLifeStageIndex == expectedIndex,
                $"asked for a {stage} teshi (life stage {expectedIndex}), the game made life stage {pawn.ageTracker.CurLifeStageIndex} at age {pawn.ageTracker.AgeBiologicalYearsFloat}");
            return pawn;
        }

        // ---- spawning ------------------------------------------------------------------------------

        [When("Teshi Renew: I spawn a {word} {word} teshi at \\({int}, {int}\\) facing {word}")]
        public void SpawnFacing(PickleContext ctx, string sex, string stage, int x, int z, string facing)
        {
            Spawn(ctx, Sex(ctx, sex), stage, x, z, Facing(ctx, facing), colony: false);
        }

        [Given("Teshi Renew: a {word} {word} teshi belonging to the colony stands at \\({int}, {int}\\)")]
        public void SpawnTame(PickleContext ctx, string sex, string stage, int x, int z)
        {
            Spawn(ctx, Sex(ctx, sex), stage, x, z, Rot4.South, colony: true);
        }

        [Given("Teshi Renew: a {word} {word} teshi stands at \\({int}, {int}\\)")]
        public void SpawnWild(PickleContext ctx, string sex, string stage, int x, int z)
        {
            Spawn(ctx, Sex(ctx, sex), stage, x, z, Rot4.South, colony: false);
        }

        /// <summary>
        /// Frames advance while the game is paused; ticks do not. A capture of a paused scene has to wait
        /// on frames, so the drawer has built every graphic before the picture is taken.
        /// </summary>
        [When("Teshi Renew: I let {int} frames pass")]
        public async Task Frames(PickleContext ctx, int frames)
        {
            await ctx.WaitFrames(frames);
        }

        // ---- laying and hatching -------------------------------------------------------------------

        /// <summary>
        /// The effect of a mating, and only that: <c>PawnUtility.Mated</c> ends in this call. The mating job
        /// itself is the game's and is not replayed here.
        /// </summary>
        [When("Teshi Renew: the female teshi is mated with the male teshi")]
        public void Mate(PickleContext ctx)
        {
            var female = TheAdult(ctx, Gender.Female);
            var male = TheAdult(ctx, Gender.Male);
            var layer = female.TryGetComp<CompEggLayer>();
            ctx.Assert(layer != null, "the female teshi has no egg-layer component");
            layer.Fertilize(male);
            ctx.Assert(layer.FullyFertilized, "the laying is not fertilized after being mated");
        }

        /// <summary>
        /// A laying takes fifteen game days. The progress is a private field, so it is written by name, and
        /// the step fails loudly if the game renames it: the laying that follows is still the game's own job.
        /// </summary>
        [When("Teshi Renew: the female teshi's egg progress is set to full")]
        public void ProgressFull(PickleContext ctx)
        {
            var layer = TheAdult(ctx, Gender.Female).TryGetComp<CompEggLayer>();
            ctx.Assert(layer != null, "the female teshi has no egg-layer component");
            var field = typeof(CompEggLayer).GetField("eggProgress", BindingFlags.NonPublic | BindingFlags.Instance);
            ctx.Require(field != null, "CompEggLayer.eggProgress no longer exists: the game renamed it, update this step");
            field.SetValue(layer, 1f);
        }

        [When("Teshi Renew: I wait for the female teshi to lay", TimeoutSeconds = 190f)]
        public async Task WaitForLaying(PickleContext ctx)
        {
            var map = Map(ctx);
            var fertilized = Def(ctx, FertilizedDefName);
            var unfertilized = Def(ctx, UnfertilizedDefName);
            await ctx.WaitUntil(() => map.listerThings.ThingsOfDef(fertilized).Count > 0 || map.listerThings.ThingsOfDef(unfertilized).Count > 0, 180f);
            ctx.Assert(map.listerThings.ThingsOfDef(fertilized).Count > 0 || map.listerThings.ThingsOfDef(unfertilized).Count > 0,
                "no egg was laid: check that the female is a colony animal, awake, on a walkable cell, and that game speed is not paused");
        }

        /// <summary>
        /// What one laying is made of, read from the game's own answer. <c>CompEggLayer.ProduceEgg</c> makes a
        /// single stack of <c>eggCountRange</c> eggs, all of the fertilized def while a fertilization is left
        /// and all of the unfertilized def otherwise. The teshi has one fertilization and lays two, so the
        /// stack is expected to be two fertilized eggs and the unfertilized def is expected not to appear.
        /// </summary>
        [Then("Teshi Renew: the laying is one stack of {int} {string} and no {string}")]
        public void LayingIs(PickleContext ctx, int count, string eggDefName, string absentDefName)
        {
            var map = Map(ctx);
            var eggs = map.listerThings.ThingsOfDef(Def(ctx, eggDefName)).ToList();
            ctx.Assert(eggs.Count == 1, $"expected one stack of {eggDefName}, found {eggs.Count} stacks");
            ctx.Assert(eggs[0].stackCount == count, $"the stack of {eggDefName} holds {eggs[0].stackCount} eggs, expected {count}");
            var absent = map.listerThings.ThingsOfDef(Def(ctx, absentDefName)).Sum(t => t.stackCount);
            ctx.Assert(absent == 0, $"{absent} {absentDefName} were laid, expected none");
        }

        [Then("Teshi Renew: the laid eggs belong to the colony")]
        public void EggsBelongToColony(PickleContext ctx)
        {
            var eggs = Map(ctx).listerThings.ThingsOfDef(Def(ctx, FertilizedDefName)).ToList();
            ctx.Assert(eggs.Count > 0, "no fertilized egg to look at");
            foreach (var egg in eggs)
            {
                var hatcher = egg.TryGetComp<CompHatcher>();
                ctx.Assert(hatcher != null, "the egg has no hatcher component");
                ctx.Assert(hatcher.hatcheeFaction == Faction.OfPlayer, $"the egg will hatch for {hatcher.hatcheeFaction?.Name ?? "no faction"}, not for the colony");
            }
        }

        /// <summary>
        /// Fifteen game days of incubation. The progress is a private field, written by name and failing
        /// loudly if the game renames it; the hatching that follows is the hatcher's own tick.
        /// </summary>
        [When("Teshi Renew: the eggs on the map are one tick from hatching")]
        public void EggsNearlyHatched(PickleContext ctx)
        {
            var eggs = Map(ctx).listerThings.ThingsOfDef(Def(ctx, FertilizedDefName)).ToList();
            ctx.Assert(eggs.Count > 0, "no fertilized egg on the map");
            var field = typeof(CompHatcher).GetField("gestateProgress", BindingFlags.NonPublic | BindingFlags.Instance);
            ctx.Require(field != null, "CompHatcher.gestateProgress no longer exists: the game renamed it, update this step");
            foreach (var egg in eggs) field.SetValue(egg.TryGetComp<CompHatcher>(), 0.9999f);
        }

        [When("Teshi Renew: I wait for the eggs to hatch", TimeoutSeconds = 190f)]
        public async Task WaitForHatch(PickleContext ctx)
        {
            var map = Map(ctx);
            var fertilized = Def(ctx, FertilizedDefName);
            await ctx.WaitUntil(() => map.listerThings.ThingsOfDef(fertilized).Count == 0, 180f);
            ctx.Assert(map.listerThings.ThingsOfDef(fertilized).Count == 0,
                "the eggs did not hatch: a hatcher stops while its egg is too cold or too hot, so check the temperature at their cell");
        }

        [Then("Teshi Renew: {int} teshi kits belong to the colony")]
        public void KitsBelongToColony(PickleContext ctx, int expected)
        {
            var kits = Teshi(ctx).Where(p => p.ageTracker.CurLifeStageIndex == 0).ToList();
            ctx.Assert(kits.Count == expected, $"expected {expected} teshi kits, found {kits.Count}");
            foreach (var kit in kits)
                ctx.Assert(kit.Faction == Faction.OfPlayer, $"a teshi kit belongs to {kit.Faction?.Name ?? "no faction"}, not to the colony");
        }

        // ---- the corpse ----------------------------------------------------------------------------

        /// <summary>
        /// A corpse takes days to dessicate. The rot comp does the jump itself, through the method the game's
        /// own debug tool uses, so the drawer meets the dessicated stage exactly as it would after the days.
        /// </summary>
        [When("Teshi Renew: the female teshi is killed and left dessicated")]
        public void KillAndDessicate(PickleContext ctx)
        {
            var pawn = TheAdult(ctx, Gender.Female);
            pawn.Kill(null);
            var corpse = pawn.Corpse;
            ctx.Assert(corpse != null && corpse.Spawned, "the teshi left no corpse on the map");
            var rot = corpse.GetComp<CompRottable>();
            ctx.Assert(rot != null, "the corpse has no rot component");
            rot.RotImmediately(RotStage.Dessicated);
            ctx.Assert(rot.Stage == RotStage.Dessicated, $"the corpse is {rot.Stage}, expected Dessicated");
            ctx.Assert(corpse.CurRotDrawMode == RotDrawMode.Dessicated, $"the corpse draws as {corpse.CurRotDrawMode}, expected Dessicated");
        }

        // ---- reading the animal --------------------------------------------------------------------

        /// <summary>Exactly one part with this label, or the step fails and says how many there were.</summary>
        private static BodyPartRecord Part(PickleContext ctx, Pawn pawn, string label)
        {
            var parts = pawn.RaceProps.body.AllParts.Where(p => p.Label == label).ToList();
            ctx.Assert(parts.Count == 1, $"expected exactly one part of the teshi labelled \"{label}\", found {parts.Count}");
            return parts[0];
        }

        private static HediffDef Hediff(PickleContext ctx, string defName)
        {
            var def = DefDatabase<HediffDef>.GetNamedSilentFail(defName);
            ctx.Assert(def != null, $"no HediffDef named {defName}");
            return def;
        }

        [When("Teshi Renew: I select the teshi")]
        public void Select(PickleContext ctx)
        {
            var pawn = TheTeshi(ctx);
            Find.Selector.ClearSelection();
            Find.Selector.Select(pawn, playSound: false, forceDesignatorDeselect: true);
            Find.CameraDriver.JumpToCurrentMapLoc(pawn.Position);
        }

        [When("Teshi Renew: the teshi is given a {string} on its {string}")]
        public void GivenInjury(PickleContext ctx, string hediffDefName, string partLabel)
        {
            var pawn = TheTeshi(ctx);
            var part = Part(ctx, pawn, partLabel);
            var hediff = HediffMaker.MakeHediff(Hediff(ctx, hediffDefName), pawn, part);
            hediff.Severity = 3f;
            pawn.health.AddHediff(hediff, part);
        }

        [Then("Teshi Renew: the teshi has a {string} on its {string}")]
        public void HasInjury(PickleContext ctx, string hediffDefName, string partLabel)
        {
            var pawn = TheTeshi(ctx);
            var part = Part(ctx, pawn, partLabel);
            ctx.Assert(pawn.health.hediffSet.hediffs.Any(h => h.def.defName == hediffDefName && h.Part == part),
                $"the teshi has no {hediffDefName} on its {partLabel}");
        }

        [Then("Teshi Renew: the teshi has no {string} on its {string}")]
        public void HasNoInjury(PickleContext ctx, string hediffDefName, string partLabel)
        {
            var pawn = TheTeshi(ctx);
            var part = Part(ctx, pawn, partLabel);
            ctx.Assert(!pawn.health.hediffSet.hediffs.Any(h => h.def.defName == hediffDefName && h.Part == part),
                $"the teshi has a {hediffDefName} on its {partLabel}, and should not");
        }

        /// <summary>
        /// The card a player opens from the animal's info button. Windows keep drawing in screenshot mode, so
        /// the card is what the capture is about; the Wildness line is read there, off the pawn.
        /// </summary>
        [When("Teshi Renew: I open the information card of the teshi")]
        public void OpenInfoCard(PickleContext ctx)
        {
            Find.WindowStack.Add(new Dialog_InfoCard(TheTeshi(ctx)));
        }

        // ---- the labels the loaded defs carry ------------------------------------------------------

        /// <summary>
        /// The label is read off the loaded def, in the language the pass started in: a DefInjected file the
        /// game did not find leaves the English source here, and a missing key leaves accented gibberish in
        /// developer mode. Both are a failure with the actual text in the message.
        /// </summary>
        [Then("Teshi Renew: the {word} {string} is labelled {string}")]
        public void DefIsLabelled(PickleContext ctx, string defType, string defName, string label)
        {
            var def = Lookup(ctx, defType, defName);
            ctx.Assert(def.label == label, $"{defType} {defName} is labelled \"{def.label}\", expected \"{label}\"");
        }

        [Then("Teshi Renew: the {word} {string} reads {string}")]
        public void DefReads(PickleContext ctx, string defType, string defName, string description)
        {
            var def = Lookup(ctx, defType, defName);
            ctx.Assert(def.description == description, $"{defType} {defName} reads \"{def.description}\", expected \"{description}\"");
        }

        [Then("Teshi Renew: the teshi kit is labelled {string} and its plural {string}")]
        public void KitLabels(PickleContext ctx, string label, string plural)
        {
            var stage = Kind(ctx).lifeStages[0];
            ctx.Assert(stage.label == label, $"the kit is labelled \"{stage.label}\", expected \"{label}\"");
            ctx.Assert(stage.labelPlural == plural, $"the kits are labelled \"{stage.labelPlural}\", expected \"{plural}\"");
        }

        [Then("Teshi Renew: the teshi has an attack labelled {string}")]
        public void HasAttack(PickleContext ctx, string label)
        {
            var race = Def(ctx, KindDefName);
            var labels = race.tools.Select(t => t.label).ToList();
            ctx.Assert(labels.Contains(label), $"no attack of the teshi is labelled \"{label}\"; its labelled attacks read [{string.Join(", ", labels.Where(l => l != null))}]");
        }

        private static Def Lookup(PickleContext ctx, string defType, string defName)
        {
            var type = GenTypes.GetTypeInAnyAssembly(defType);
            ctx.Assert(type != null, $"no def type named {defType}");
            var def = GenDefDatabase.GetDefSilentFail(type, defName);
            ctx.Assert(def != null, $"no {defType} named {defName}");
            return def;
        }
    }
}
