# XP scaler
This mod lets you customise the amount of xp each biome gives

## Settings
- `global: number = 1.0` the multiplier for all biomes not specified
- `biome: table<id, number> = {}` the map from biome ids to xp scale, example is `{STRT = 1.0}`, this takes priority over global
