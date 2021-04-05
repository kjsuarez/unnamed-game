function player_attempt_direct_heal(card_inst, script_params){
	var hash_string = json_encode(card_inst.script_params);
	
	var total_damage = calculate_damage_for_context(opponent_obj, card_inst.script_params[?"heal_type"], card_inst.script_params[?"heal_value"]);
	var heal_val = total_damage;
		//hit opponents face
		switch (card_inst.script_params[?"heal_type"]){
		    case "logos":
				if (opponent_obj.logos_health - total_damage < 0) heal_val = opponent_obj.logos_health;
		        opponent_obj.logos_health = opponent_obj.logos_health - heal_val;
		        break;
		    case "ethos":
				if (opponent_obj.ethos_health - total_damage < 0) heal_val = opponent_obj.ethos_health;
		        opponent_obj.ethos_health = opponent_obj.ethos_health - heal_val;
		        break;
		    case "pathos":
				if (opponent_obj.pathos_health - total_damage < 0) heal_val = opponent_obj.pathos_health;
		        opponent_obj.pathos_health = opponent_obj.pathos_health - heal_val;
		        break;
		    case "flirt":
				if (opponent_obj.flirt_health - total_damage < 0) heal_val = opponent_obj.flirt_health;
		        opponent_obj.flirt_health = opponent_obj.flirt_health - heal_val;
		        break;
		    case "friend":
				if (opponent_obj.friend_health - total_damage < 0) heal_val = opponent_obj.friend_health;
				
		        opponent_obj.friend_health = opponent_obj.friend_health - heal_val;
		        break;
		    case "aggro":
				if (opponent_obj.agro_health - total_damage < 0) heal_val = opponent_obj.agro_health;
		        opponent_obj.agro_health = opponent_obj.agro_health - heal_val;
		        break;
		}	
	
}