function enemy_attack_with_params(opponent, script_params) {
	var attack_power = script_params[? "power"];
	var player_tokens = player_obj.tokens;
	var token_count = ds_list_size(player_tokens);
	var choices = ds_list_create();
	choices[| 0] = "logos";
	choices[| 1] = "pathos";
	ds_list_shuffle(choices);
	var total_damage = get_enemy_damage_total(attack_power, choices[| 0]);
	
	if(script_params[? "target"] == "stack"){
		if(token_count > 0){
			var token_inst = player_tokens[| token_count - 1];
			attack_token_with_params(opponent_obj, token_inst, total_damage, script_params);
		}else{
			enemy_attempt_direct_attack(opponent, script_params);
		}
	}else{
		enemy_attempt_direct_attack(opponent, script_params);
	}
		
}
