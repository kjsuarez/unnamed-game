
function handle_enemy_turn(){
	//turn behavior:
	var moves_arry = ["attack", "token", "multiplier", "status"];
	var moves = ds_list_create();
	//ds_list_add(moves, "attack");
	ds_list_add(moves, "token");
	//ds_list_add(moves, "multiplier");
	//ds_list_add(moves, "status");
	ds_list_shuffle(moves);
	var current_move = moves[| 0];
	show_debug_message("current move: " + current_move);
	
	switch (current_move)
    {
		case "attack":
			enemy_attack(2);
			break;
		
		case "token":
			add_token(opponent_obj);
			break;
		
		case "multiplier":
			if(has_multiplier("enemy")){
				var owners_modifiers = mod_tokens_for("enemy");
				mod_inst = owners_modifiers[| 0];
				instance_destroy(mod_inst);
				opponent_obj.temp_modifier = mod_inst.modifier;

				enemy_attack(2);
			}else{
				add_multiplier("enemy", 2);

			}
		break;
		
		case "status":
			add_status(player_obj);
			break;
	}
	
	/**
	
	if(false){//ds_list_size(player_obj.statuses) < 1){
		add_status(player_obj);
		return;
	}
	
	if(false){
		add_token(opponent_obj)
		return;
	}
	
	if(true){//has_multiplier("enemy")){
	
		var owners_modifiers = mod_tokens_for("enemy");
		mod_inst = owners_modifiers[| 0];
		instance_destroy(mod_inst);
		opponent_obj.temp_modifier = mod_inst.modifier;

		enemy_attack(2);
	}else{
		add_multiplier("enemy", 2);

	}
	
	**/
	
}