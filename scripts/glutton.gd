extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "twf_glutton"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Glutton"
	localized_names = {}
	value = 1
	description = "<color_df4d69>Destroys<end> adjacent <group_food> and <last_food>. Gives 2x the value of the symbols destroyed this way."
	localized_descriptions = {}
	values = []
	rarity = "uncommon"
	groups = ["doglikes","human","organism"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "food"}
			], 
			"value_to_change": "destroyed", 
			"diff": true, 
			"anim": "bounce", 
			"anim_targets": "adjacent_symbol"
		},
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "food"},
				{"a": "destroyed", "b": true}
			], 
			"value_to_change": "value_multiplier", 
			"diff": 2
		}
	]
