function player_damage_for(card_inst){
	var damage_type = card_inst.type;
	
	var stat_modifier = 1;
	switch (damage_type){
		    case "logos":
		        stat_modifier = opponent_obj.logos_stat;
		        break;
		    case "ethos":
		        stat_modifier = opponent_obj.ethos_stat;
		        break;
		    case "pathos":
		        stat_modifier = opponent_obj.pathos_stat;
		        break;
		    case "flirt":
		        stat_modifier = opponent_obj.flirt_stat;
		        break;
		    case "friend":
		        stat_modifier = opponent_obj.friend_stat;
		        break;
		    case "aggro":
		        stat_modifier = opponent_obj.agro_stat;
		        break;
		}
	
	return card_inst.damage * opponent_obj.temp_modifier * stat_modifier;
}