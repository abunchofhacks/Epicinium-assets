# Epicinium-assets
This repository contains assets for Epicinium.
Epicinium is a multiplayer strategy game with simultaneous turns where nature is a finite resource, available for Windows, Mac and Linux. It is released 12 October 2020 on [Steam](https://store.steampowered.com/app/1286730/Epicinium/) and [itch.io](https://abunchofhacks.itch.io/epicinium).

Epicinium is being developed by [A Bunch of Hacks](https://abunchofhacks.coop),
a worker cooperative for video game and software development from the Netherlands.
Contact us at [info@epicinium.nl](mailto:info@epicinium.nl).

## Contents

*  `audio/` contains WAV files for sound effects and music
*  `data/loc/` contains localization data
*  `keys/` contains a CA root certificate bundle
*  `maps/` contains the maps that games are played on
*  `pictures/` contains PNG images used in the game's UI
*  `resources/` contains colors palettes and "skins"
*  `rulesets/` contains rulesets (collections of values and modifiers that affect how the game is played)
*  `sprites/` contains PNG images and JSON metadata files
*  `src/` contains Aseprite files for the sprites found in `sprites`

## External dependencies

*  [Aseprite](https://www.aseprite.org/) (optional, needed for `export.sh`)
*  [Bash](https://www.gnu.org/software/bash/) (optional, needed for `export.sh`)

## Regenerating sprites

The original Aseprite files for the sprites are found in `src`. The sprite PNG files and their JSON counterparts can be created with Aseprite's _Export Sprite Sheet_ option.
On systems with Bash, you can export multiple sprites at the same time by calling `export.sh` followed by one or more aseprite files from within the `src` folder.

For example, to regenerate `sprites/tiles/grass.png` and `sprites/tiles/grass.json`:

1. `cd src`
2. `./export.sh tiles/grass.ase`

## License

Epicinium was created by [A Bunch of Hacks](https://abunchofhacks.coop).
These assets are made available to you under the CC-BY-NC 4.0 license,
as specified in `LICENSE.txt`.

## Authors

*  Audio by Daan Mulder, Can Ur and Masha Loutanina.
*  Sprites by Sander in 't Veld and Masha Loutanina.
*  Maps, rulesets and other resources by Sander in 't Veld and Daan Mulder.

Copyright © 2017-2020 A Bunch of Hacks

## Related repositories

*  [Epicinium](https://github.com/abunchofhacks/Epicinium), the full source code for Epicinium
*  [Epicinium documentation](https://github.com/abunchofhacks/epicinium-documentation), which includes a wiki and a tutorial for Epicinium
*  [Epicinium-NeuralNewt](https://github.com/abunchofhacks/Epicinium-NeuralNewt), a libtorch framework for training neural networks to play Epicinium via NeuralNewt, a parameterized decision tree AI, with evolutionary training techniques
