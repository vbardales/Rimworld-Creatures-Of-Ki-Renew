# Changelog

Format inspired by [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
This file serves the repository and the writing of Steam patch notes; RimWorld does not display it
in game.

## [1.0.0] — unreleased

On release: create the `v1.0.0` tag and the matching GitHub release.

First release of the 1.6 update of the teshi from **Creatures of Ki**, by Shooki, continued by Mlie
through 1.4.

### Added

- Support for RimWorld 1.6.
- Complete French DefInjected coverage for the teshi, eggs, young animal, attacks and custom body-part labels.
- `EggTeshiUnfertilized`. The mod declared only its fertilized egg. Every egg-layer in Core
  declares both, without exception — chicken, duck, goose, turkey, ostrich, emu, cassowary, cobra,
  tortoise and iguana. The new def carries the fertilized egg's market value.

  It is declared for parity, not because the animal needs it: a teshi does not lay it in normal play.
  Read in the compiled game, one laying is a single stack of `eggCountRange` eggs (2), all fertilized
  while a fertilization is left (`eggFertilizationCountMax` is 1), so a mated female lays a stack of two
  fertilized eggs. Without a fertilization, `CompTick` pins her progress at `eggProgressUnfertilizedMax`
  (0.9, inherited from upstream and not set here) and `CanLayNow` requires a full 1, so she does not lay
  at all. Only the dev-mode gizmo that sets the progress to 1 reaches the unfertilized egg.

  Two earlier wordings of this entry were wrong. One said `CompEggLayer` throws whenever an animal lays
  without having been fertilized, which was stated too absolutely. The other said the second egg of a
  mated laying has nothing to be but unfertilized, inferred from the two settings without reading
  `ProduceEgg`, which makes one stack. The in-game confirmation is still to be performed.
- `LICENSE`, the upstream MIT notice, which is what MIT asks in exchange for redistribution.

### Changed

- Simplified the showcase icon to remove glow and orbital sparkles.
- Corrected the showcase anatomy description, verification documentation and final GitHub source link.

- **`wildness` moved to `<Wildness>` under `statBases`.** It stopped being a field of
  `RaceProperties` in 1.6 and became a StatDef. The old form is not an error, it is simply not
  read, and the stat's default is `-1` — outside the range the game uses, so the animal tames for
  almost nothing.

### Removed

- The Kija: the playable race, its two factions, its pawn kinds and its name makers, along with the
  Humanoid Alien Races dependency that came with them. This mod adds one animal and needs nothing.

### Notes

No balance value was changed. One defect inherited from the original is left in place on purpose
and documented in `ATTRIBUTION.md`: the dessicated teshi corpse uses the dromedary's texture.

## [0.1.0] — 2026-09-23

Creation of a publishIdFile. Prepublication: a first upload whose only purpose was to create the
Workshop item, private as Steam creates every new item, and to obtain `Mod/About/PublishedFileId.txt`,
which holds item `3806709627`. This entry does not say the mod is public or tested.

### Added

- `Mod/About/PublishedFileId.txt`, committed in `98a7c49`. Without it the next upload would create a
  second item instead of updating this one.

### Notes

- The upload contained `Mod/` as it stood at `3449ee5`. Nothing in `Mod/` has changed since, apart
  from that file and the wording of the two egg passages in `About.xml`, corrected afterwards. The
  private item still carries the earlier text, which only a hand edit on the Steam page can change.
- It was made from the working tree, which also held 9 `.dds` texture caches that the game had
  written beside the PNGs eighteen minutes earlier. They are not in git, so the private item probably
  carries them. This repository has no publish workflow yet: an upload from a git checkout drops
  them, one from the working tree sends them again.
- The features listed under 1.0.0 are still to come as a release. The `tested` and `prepublished`
  states have not been reached: see `STATUS.md`.
