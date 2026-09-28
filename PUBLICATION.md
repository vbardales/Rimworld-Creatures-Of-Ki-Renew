# Publication sheet

**Written 2026-09-27. The mod is at `tested`. The Workshop item exists (`3806709627`, created by the 0.1.0
prepublication, private as Steam creates them) and `Mod/About/PublishedFileId.txt` is committed. What is
still ahead: the items below marked TO DO, the upload by the CI, the switch to public, and the thanks
comments.** This sheet holds what the Workshop page asks for and the repository holds nowhere else, so that
it can be used again at the next update and by whoever picks the mod up.

This is an **update of an existing item**, not a first creation (`../PUBLISHING.md`, "Publier par la CI").
Steam already holds the 0.1.0 content; the payload of the next upload is `Mod/` as it stands once the arm
recipes land, plus this description.

## Before the upload

- **Repository.** Working tree clean and pushed before the dry-run.
- **CHANGELOG.** `## [1.0.0] — unreleased` must be given its date before the upload: that section is the
  GitHub release's notes. The tag `v1.0.0` and the release are created **by the CI after a successful
  upload**, never by hand.
- **The workflow.** Not generated yet: `Rimworld-Release-Admin/scripts/generate-publish-workflow.sh
  <path-to-this-repo> --workshop-id 3806709627 --package-id nelim.creaturesofki --release-title
  "Creatures of Ki - Teshi Renew {version}" --description-markdown PUBLICATION.md --description-heading
  '^## Steam description$' --about-from-description`, on the owner's word of 2026-09-27 (`../PUBLISHING.md`,
  "Source unique de la description"). This mod has no compiled assembly, so no `--require`. `dry-run` first,
  on the exact commit, its log read for the `publish template:` and `options:` lines; the run id and the SHA
  go into `STATUS.md`. `publish` takes the full 40-character SHA, and refuses without a green dry-run of that
  exact SHA; **only Virginie approves `steam-production`**. **Any commit after the dry-run changes the SHA and
  needs a new one.**
- **The CI sends `Mod/`** minus what `Mod/.steamignore` excludes (`README.template.md`, `README.md`, and the
  generated `.dds` texture copies). The workflow's opt-in inputs are off by default and turned on only for
  this dispatch, on the owner's word: `update_description` (below), `update_preview` off (below).

## The description: `update_description`, generated with `--about-from-description`

The single source is the Markdown block below. The CI turns it into Steam BBCode for the page and into the
plain-text `<description>` of `Mod/About/About.xml` (`sync-about-description.mjs`), verified to match at every
dry-run: no hand-kept copy. The owner read the content on 2026-09-26 (as `Mod/README.template.md`) and found
it good; moving it here changes nothing but its location, so no further re-read is asked before the next
dry-run reprints it. Every publish with `update_description` on overwrites the page: this block stays the
single source, and a hand edit on Steam afterward would be lost.

The Compatibility paragraph below was rewritten on 2026-09-27 once ticket `a747` played
`Mod/Patches/ADS2_Arms.xml` green: the teshi now receives all four prostheses of its category, arms
included, and the paragraph no longer singles out the paw recipes.

## Steam description

```markdown
The teshi from Shooki's [Creatures of Ki](https://steamcommunity.com/sharedfiles/filedetails/?id=2726461020), brought forward to RimWorld 1.6. An animal from the forest planet Ki, and its eggs.

I am not the author of this mod. The design, the textures and the original idea are Shooki's, and the 1.0 to 1.4 continuation is Mlie's. All I did was the work needed to make the animal run on 1.6. Credit goes to them; mistakes in the update are mine. If either comes back to it, or asks me to take this down, I will.

Original mod: [Creatures of Ki](https://steamcommunity.com/sharedfiles/filedetails/?id=2726461020), in Mlie's continuation. It declares 1.4 and nothing further.

## What it adds

- **The teshi.** A large, bipedal feathered predator with four wide banded ears, a short dark crest and a thick banded tail. It has claws and a bite worth 25 damage, and it turns manhunter three times in four when harmed. Trainable to intermediate. It nuzzles, and it lives eighty years.
- **Teshi eggs.** A mated female lays a stack of two fertilized eggs, which take fifteen days to hatch into two kits. An unfertilized egg is defined too, as every egg-layer has one, but a teshi does not lay it in normal play.
- **Where it lives.** Shrubland, forest, rainforest, boreal forest and tundra, sparsely, and almost never on ice or desert.

No DLC and no dependencies.

## What is not included

[Creatures of Ki](https://steamcommunity.com/sharedfiles/filedetails/?id=2726461020) is four fifths a playable race: the Kija, their faction and their name makers, all of which need Humanoid Alien Races. None of that is here, and this mod needs no Humanoid Alien Races. If you want the Kija, use the original.

## Compatibility

[A Dog Said... Animal Prosthetics 2](https://steamcommunity.com/sharedfiles/filedetails/?id=3238353862) is supported and optional. The teshi is in its category 3, the one that holds the bears and the wolves, so it can receive that mod's prosthetic limbs and bionics wherever its body has the matching part, arms included. This mod loads before it, as that mod's page asks, and does nothing when it is absent.

[XND] Nocturnal Animals (Continued) is supported and optional. With it, the teshi is crepuscular: awake at dawn and at dusk. That rhythm is my choice, since the original gives the teshi none, and without that mod nothing changes.

## What changed in the 1.6 update

- **Wildness stopped being a race property.** In 1.6 it is a Wildness stat declared under statBases, and the old form was simply ignored: the teshi tamed as easily as a rat.
- **The unfertilized egg was missing.** Every egg-laying animal in the base game declares one, and the teshi did not. The def was written, taking the market value of its fertilized counterpart. It is declared for parity: a teshi lays a stack of two fertilized eggs, and without a fertilization it does not lay at all.

No balance value was changed. The dessicated teshi corpse draws with a dromedary's texture, as it did in the original, and that is left alone on purpose.

Content mod: removing it mid-game will lose any teshi and any teshi eggs already in play.

## IF I GO QUIET

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved.

## AI-GENERATED

The 1.6 update, its tests and its documentation were written with Claude Code (Anthropic), and Codex (OpenAI) also contributed to the repository. The showcase images, the preview background and the icon, are AI-generated artwork; the icon was later edited with OpenAI's built-in image tool, and the preview was lettered afterwards in HTML. Working with these tools is part of how I make mods.

## THANKS

Shooki, for the teshi: its design, its textures and its defs.
Mlie, who kept [Creatures of Ki](https://steamcommunity.com/sharedfiles/filedetails/?id=2726461020) alive through 1.4 and published it under the MIT terms this update relies on.
SamBucher, for [A Dog Said... Animal Prosthetics 2](https://steamcommunity.com/sharedfiles/filedetails/?id=3238353862), whose category system this mod plugs into.
XeoNovaDan, for XND Nocturnal Animals, and Mlie again, who continues it as XND Nocturnal Animals (Continued): [the original](https://steamcommunity.com/sharedfiles/filedetails/?id=2004368312) and [the continuation](https://steamcommunity.com/sharedfiles/filedetails/?id=2269731409), whose body clocks this mod plugs into.

Tested with [Pickle](https://steamcommunity.com/sharedfiles/filedetails/?id=3791648678), [RimLogging](https://steamcommunity.com/sharedfiles/filedetails/?id=3733484696) and [Nelim's Pickle Tools](https://steamcommunity.com/sharedfiles/filedetails/?id=3806142401), thanks to their authors: development only, never a dependency of this mod.

What is reused and how it differs is detailed in ATTRIBUTION.md, and LICENSE says what the MIT grant covers, the upstream notice included.

[Source code on GitHub](https://github.com/vbardales/Rimworld-Creatures-Of-Ki-Renew)
```

## Release notes (the change note of each upload)

The block under `### <version>` sent as the Steam change note, first line the version alone
(`[b]1.0.0[/b]`, `../PUBLISHING.md`); the `## [<version>]` section of `CHANGELOG.md` goes into the GitHub
release instead.

### 1.0.0

```
[b]1.0.0[/b]
First release. Brings Shooki's teshi (Creatures of Ki, continued by Mlie) forward to RimWorld 1.6: Wildness
is now a proper stat, the missing unfertilized egg is declared for parity, and full French coverage is
added. Built-in optional compatibility with A Dog Said... Animal Prosthetics 2 (prosthetic and bionic limbs)
and [XND] Nocturnal Animals (Continued) (crepuscular body clock). No DLC and no hard dependency.
```

## Dependencies and DLC

Checked in the sources, not from intention (`Mod/About/About.xml`, `STATUS.md`).

- **No hard dependency.** `modDependencies` is empty; the mod needs nothing but RimWorld 1.6.
- **DLC: none required.** `supportedVersions` is `1.6`; no `LoadFolders.xml`, so no `IfModActive` branch to
  check. The final validation ran with every DLC present and passed, which shows the mod does not object to
  them, not that it needs them.
- **A Dog Said... Animal Prosthetics 2 (`SamBucher.ADogSaidAnimalProsthetics2`, Workshop `3238353862`):
  optional, declared in `loadBefore` only**, as that mod's page asks of a mod that builds compatibility in.
  `Patches/ADS2_Categories.xml` and `Patches/ADS2_Arms.xml` are both conditional and inert when it is absent.
- **[XND] Nocturnal Animals (Continued) (`Mlie.XNDNocturnalAnimals`, Workshop `2269731409`; original by
  XeoNovaDan, Workshop `2004368312`): optional, no `loadBefore` and no dependency.**
  `Patches/NocturnalAnimals.xml` is one `PatchOperationFindMod` on both names and touches only the teshi.
- **Incompatibilities: none declared** (`incompatibleWith` absent, and neither README nor CHANGELOG claims
  one).

## Captures for the Workshop page

**Two rewrites so far, both 2026-09-27, not played again yet.** First played (ticket `8f97`): the "flowers"
preset's default camera (size 12) left the teshi small in a wide frame, at the exact spot where the studio's
own actor Miel is stationed, so she stood in shots 1 and 2 uninvited. Rewritten with a closer camera (a local
step, `Teshi Renew: the camera looks at (x, z) at zoom {int}`, the same pattern DrumBathHygiene's own capture
scenario uses) centred on (170,92), about 17 cells from Miel's spot. The owner then asked for the scene to sit
on the orange flower bed specifically, only orange, over a 3x3 block: the studio mixes dandelions (yellow),
daylilies (orange, `Plant_Daylily`) and roses (red) at random per cell, so no fixed coordinate is reliably one
colour. `Teshi Renew: a 3x3 patch of only {string} is found near (x, z)` now searches outward from (170,92) at
scenario start for the nearest 3x3 block that is only daylilies, and the scene and camera use that found patch.
Shot 3 (the Health tab) also clears the letters and alerts and turns developer mode off for the capture,
through `nelim.pickletools.screenshotmode` (added to `wsl-deps.studio.map`; itself a port of DrumBathHygiene's
own local step, made shared on 2026-09-27). A fresh exploration ticket is queued; whether a qualifying 3x3
patch exists within the search radius of (170,92) is what that run will show.

`Tests/Pickle/Mod/Pickle/Features/11-workshop-captures.feature` (2026-09-27), on the
reusable photographic colony `nelim-zen-meadow-studio` (`wsl-deps.studio.map`), not the test colony — the
precedent and the reason are `DrumBathHygiene/Tests/Pickle/Mod/Pickle/Features/07-workshop-captures.feature`,
whose first pair of shots on `test-colony` was refused. Three scenarios, unfilmed, each a screenshot named for
its order:

1. **`workshop-1-the-teshi`** — the adult standing in the flower glade, presentation mode (no interface).
2. **`workshop-2-the-kit-and-the-egg`** — a kit beside a fertilized egg, presentation mode: "and its eggs" of
   the description.
3. **`workshop-3-the-health-tab`** — the Health tab of an adult with one claw cut, interface kept, since the
   tab is the subject.

Once played and reviewed, the chosen images are copied and converted to JPEG into
`Art/WorkshopScreenshots/` (`01-…`, `02-…`, `03-…`, that alphabetical order also being the page's), which does
not exist yet, and every image is opened once against the "no adult content" claim below before it is
committed. The owner picks the final order and may ask for a different scene; none is taken yet.

## The preview image

`Mod/About/Preview.png` exists (665,299 bytes) and was not touched in this session. Whether it needs
re-rendering, and whether `update_preview` is turned on for this dispatch, is the owner's call; nothing is
proposed here because no problem with the current image is on record.

## Content boxes (adult content, violence)

**TO DO, not yet opened for this pass.** `Preview.png`, `ModIcon.png` and any capture stills must be opened
once more immediately before the dry-run that will carry them, and the answer written here. On what is known
of the subject (a feathered animal, no colonist figure, no gore), the expected answer is **no adult content**,
but this line is not itself the check the workflow protocol asks for.

## Thanks to post, after the item is public

One main comment per recipient page for the whole collection: `../WORKSHOP_COMMENTS.md` is read first, keyed
by Workshop id. A link to a private item opens for nobody, so nothing is posted before this item is public.
The item link is `https://steamcommunity.com/sharedfiles/filedetails/?id=3806709627`.

| Recipient | Workshop id | Register today | What to do |
| --- | --- | --- | --- |
| Creatures of Ki (Continued), Shooki and Mlie | `2726461020` | no row | add a `drafted` row, post the draft below, then `posted` with the date |
| A Dog Said... Animal Prosthetics 2, SamBucher | `3238353862` | `drafted` (draft in `DalmatiansRenew/PUBLICATION.md`) | do not draft again: once that draft is posted, add `Creatures of Ki - Teshi Renew` to its `Covers`; if this item goes public first, post that existing draft from here instead and update the register |
| [XND] Nocturnal Animals (Continued), Mlie | `2269731409` | `drafted` (draft in `ACertainSeriesCreaturesAndHairRenew/PUBLICATION.md`) | same: add to `Covers` once posted, or post that draft from here if this item is public first |
| [XND] Nocturnal Animals, XeoNovaDan | `2004368312` | `drafted` (draft in `ACertainSeriesCreaturesAndHairRenew/PUBLICATION.md`) | same |
| Pickle | `3791648678` | `posted` | add `Creatures of Ki - Teshi Renew` to `Covers`, post nothing |
| RimLogging | `3733484696` | `posted` | same |
| Nelim's Pickle Tools | `3806142401` | `not_applicable` | the author's own project; add to `Covers` |

**Shooki and Mlie, on Creatures of Ki (Continued)** (draft, 512 characters):

```
[b]Thank you both for the teshi! 🦖🪶[/b]
Shooki, the design and the textures are all yours — a big feathered biped with banded ears and a banded tail is exactly the kind of animal I wanted RimWorld to have.
Mlie, thank you for keeping it alive through 1.4 and for the MIT terms that let me bring it the rest of the way. I only did the 1.6 plumbing: a proper Wildness stat and the missing unfertilized egg for parity. If anything about the port bothers either of you, tell me and I will fix it 💛
https://steamcommunity.com/sharedfiles/filedetails/?id=3806709627
```

Not posted, and the register has no row yet: this is the owner's act, after the item is public.

## When 1.0.0 goes to production: by hand, by the owner

The CI never sends the visibility. `../PUBLISHING.md` ("Mise en production d'une 1.0.0") lists what only she
does on Steam: change the visibility of the item after testing it subscribed, subscribe to its comments, and
"Watch all activity" of the mod and of Creatures of Ki (Continued). Written in `STATUS.md` (date, the three
points) before the stage is `published`.

## After the upload, and it cannot be undone

- **`Mod/About/PublishedFileId.txt` is committed and pushed** (done): lost, the next upload creates a second
  item.
- **The item is private** until the owner switches it to public by hand, after subscribing to it and testing
  the content she receives. RimWorld and the CI never call `SetItemVisibility`.
- Check the public page (description, change note, images) and record the evidence in `STATUS.md`: a green
  GitHub release does not prove that Steam is up to date.
- Record the run ids and SHAs of the dry-run and of the publish in `STATUS.md`, then post the thanks comment
  above (and any of the shared drafts this item ends up posting first).
