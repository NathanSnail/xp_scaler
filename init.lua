---@type mod_calllbacks
local M = {}
function M.pre(_api, config)
	local global = config.global or 1.0
	local biome = config.biome or {}
	local _add_creature_spawn_chance = add_creature_spawn_chance
	add_creature_spawn_chance = function(biome_id, creature_id, chance, xp)
		if biome[biome_id] then
			xp = xp * biome[biome_id]
		else
			xp = xp * global
		end
		_add_creature_spawn_chance(biome_id, creature_id, chance, xp)
	end
end
return M
