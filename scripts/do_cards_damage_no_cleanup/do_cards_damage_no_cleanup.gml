function do_cards_damage_no_cleanup(card_inst, script_params){
	var enemy_tokens = opponent_obj.tokens;
	var token_count = ds_list_size(enemy_tokens);
	var total_damage = player_damage_for(card_inst);
	show_debug_message("ABOUT TO DO CARD DAMAGE FOR CARD " + string(card_inst) + ", TARGET: " + string(card_inst.target));
	if(card_inst.target == "stack"){
		if(token_count > 0){
			var token_inst = enemy_tokens[| token_count - 1];
			attack_token_with_params(player_obj, token_inst, total_damage, script_params);
		} else {
			player_attempt_direct_damage(card_inst, script_params);
		}
	} else {	
		player_attempt_direct_damage(card_inst, script_params);
	}	
}