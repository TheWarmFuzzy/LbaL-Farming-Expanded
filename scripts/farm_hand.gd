extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "twf_farm_hand"
	inherit_effects = false
	inherit_art = false
	inherit_groups = false
	display_name = "Farm Hand"
	localized_names = {}
	value = -1
	description = "Permanently give adjacent <group_fruit> and <last_fruit> <icon_coin><color_FBF236>1<end> up to <icon_coin><color_FBF236>5<end>."
	localized_descriptions = {}
	values = []
	rarity = "rare"
	groups = ["doglikes","human","organism"]
	sfx = []
	effects = [
		{
			"effect_type": "adjacent_symbols", 
			"comparisons": [
				{"a": "groups", "b": "fruit"},
				{"a": "permanent_bonus", "b":5, "less_than_eq":true }
			], 
			"value_to_change": "permanent_bonus", 
			"diff": 1,
			"anim": "shake", 
			"anim_targets": "adjacent_symbol"
		}
	]
