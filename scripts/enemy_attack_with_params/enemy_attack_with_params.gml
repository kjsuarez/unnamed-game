function enemy_attack_with_params(opponent, script_params) {
	var attack_power = script_params[? "power"];
	var player_tokens = player_obj.tokens;
	var token_count = ds_list_size(player_tokens);
	
	var choices = ds_list_create();
		choices[| 0] = "logos";
		choices[| 1] = "pathos";
		ds_list_shuffle(choices);
		var total_damage = get_enemy_damage_total(attack_power, choices[| 0]);
	
	if(token_count > 0){
		//show_debug_message("Attacking player tokens");
		var token_inst = player_tokens[| token_count - 1];
		attack_token(opponent_obj, token_inst, total_damage);
	}else{
		//show_debug_message("attacking player directly");
		switch (choices[| 0]){
		    case "logos":
		        player_obj.logos_health += total_damage;
		        break;
		    case "pathos":
		        player_obj.pathos_health += total_damage;
		        break;
		}

	}
	
}
