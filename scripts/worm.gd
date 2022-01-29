extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "twf_worm"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Worm"
	localized_names = {}
	value = 1
	description = "<color_df4d69>Destroys<end> <group_doublefruit> or <last_doublefruit> from a random adjacent slot. <color_df4d69>Adds<end> <color_df4d69>2<end><icon_seed> for each symbol <color_df4d69>destroyed<end>."
	localized_descriptions = {}
	values = []
	rarity = "common"
	groups = ["organism"]
	sfx = []
	effects = [
		{
			"effect_type": "rand_adjacent_symbol", 
			"comparisons": [
				{"a": "groups", "b": "doublefruit"}
			], 
			"one_time": true,
			"value_to_change": "destroyed",	
			"diff": true, 
			"anim": "bounce", 
			"anim_targets": "adjacent_symbol",
			"tiles_to_add":[{"type": "seed"}, {"type": "seed"}]
		}
	]
