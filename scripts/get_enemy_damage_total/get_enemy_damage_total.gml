function get_enemy_damage_total(starting_damage, damage_type){
	
	var stat_modifier = 1;
	switch (damage_type){
		    case "logos":
		        stat_modifier = player_obj.logos_stat;
		        break;
		    case "ethos":
		        stat_modifier = player_obj.ethos_stat;
		        break;
		    case "pathos":
		        stat_modifier = player_obj.pathos_stat;
		        break;
		    case "flirt":
		        stat_modifier = player_obj.flirt_stat;
		        break;
		    case "friend":
		        stat_modifier = player_obj.friend_stat;
		        break;
		    case "aggro":
		        stat_modifier = player_obj.agro_stat;
		        break;
		}
	
	
	return starting_damage * opponent_obj.temp_modifier * stat_modifier;
}