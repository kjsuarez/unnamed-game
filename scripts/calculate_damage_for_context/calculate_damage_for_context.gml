function calculate_damage_for_context(combatent, xxxdamage_type, param_value){
	var damage_type = xxxdamage_type;
	
	var stat_modifier = 1;
	switch (damage_type){
		    case "logos":
		        stat_modifier = combatent.logos_stat;
		        break;
		    case "ethos":
		        stat_modifier = combatent.ethos_stat;
		        break;
		    case "pathos":
		        stat_modifier = combatent.pathos_stat;
		        break;
		    case "flirt":
		        stat_modifier = combatent.flirt_stat;
		        break;
		    case "friend":
		        stat_modifier = combatent.friend_stat;
		        break;
		    case "aggro":
		        stat_modifier = combatent.agro_stat;
		        break;
		}
	
	return param_value * combatent.temp_modifier * stat_modifier;
}