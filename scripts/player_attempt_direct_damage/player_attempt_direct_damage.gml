function player_attempt_direct_damage(card_inst, script_params){
	var total_damage = player_damage_for(card_inst);
	//determine if tokens present
	enemy_tokens = opponent_obj.tokens
	if(ds_list_size(enemy_tokens) > 0){
		
		
		var token_count = ds_list_size(enemy_tokens);
		var token_inst = enemy_tokens[| token_count - 1];
		if(token_inst.defender == true){
			attack_token_with_params(player_obj, token_inst, total_damage, script_params);
			
			// what we did before *attack_token_with_params()*
			//ds_list_delete(enemy_tokens, token_count - 1);
			//instance_destroy(token_inst);
		} else {
			switch (card_inst.type){
		    case "logos":
		        opponent_obj.logos_health = opponent_obj.logos_health + total_damage;
		        break;
		    case "ethos":
		        opponent_obj.ethos_health = opponent_obj.ethos_health + total_damage;
		        break;
		    case "pathos":
		        opponent_obj.pathos_health = opponent_obj.pathos_health + total_damage;
		        break;
		    case "flirt":
		        opponent_obj.flirt_health = opponent_obj.flirt_health + total_damage;
		        break;
		    case "friend":
		        opponent_obj.friend_health = opponent_obj.friend_health + total_damage;
		        break;
		    case "aggro":
		        opponent_obj.agro_health = opponent_obj.agro_health + total_damage;
		        break;
			}
		}
		
	}else{
		//otherwise hit opponents face
		switch (card_inst.type){
		    case "logos":
		        opponent_obj.logos_health = opponent_obj.logos_health + total_damage;
		        break;
		    case "ethos":
		        opponent_obj.ethos_health = opponent_obj.ethos_health + total_damage;
		        break;
		    case "pathos":
		        opponent_obj.pathos_health = opponent_obj.pathos_health + total_damage;
		        break;
		    case "flirt":
		        opponent_obj.flirt_health = opponent_obj.flirt_health + total_damage;
		        break;
		    case "friend":
		        opponent_obj.friend_health = opponent_obj.friend_health + total_damage;
		        break;
		    case "aggro":
		        opponent_obj.agro_health = opponent_obj.agro_health + total_damage;
		        break;
		}	
	}
	player_obj.temp_modifier = 1;
}