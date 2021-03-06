function enemy_attack(power) {
			
	var player_tokens = player_obj.tokens;
	var token_count = ds_list_size(player_tokens);
	
	var choices = ds_list_create();
		choices[| 0] = "logos";
		choices[| 1] = "pathos";
		ds_list_shuffle(choices);
		var total_damage = get_enemy_damage_total(power, choices[| 0]);
	
	if(token_count > 0){
		var token_inst = player_tokens[| token_count - 1];
		attack_token(opponent_obj, token_inst, total_damage);
	}else{
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
