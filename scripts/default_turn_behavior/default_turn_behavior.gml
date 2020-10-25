function default_turn_behavior(){
	//turn behavior:
	var moves_arry = ["attack", "token", "multiplier", "status"];
	var moves = ds_list_create();
	//ds_list_add(moves, "attack");
	//ds_list_add(moves, "multi_attack");
	ds_list_add(moves, "token");
	//ds_list_add(moves, "multiplier");
	//ds_list_add(moves, "status");
	ds_list_shuffle(moves);
	var current_move = moves[| 0];
	
	//show_debug_message("current move: " + current_move);
	
	switch (current_move)
    {
		case "attack":
			var attack_script_params = ds_map_create();
			attack_script_params[? "power"] = 2;
			attack_script_params[? "cleanup_script"] = "next_phase_with_params";
			var target = target_coordinates(player_obj, "stack");
			create_animator([target[0], target[1]], slash_spr, "resolve_at_animation_end", "enemy_attack_with_params", opponent_obj, attack_script_params);
			
			//enemy_attack(2);
			break;
		
		case "multi_attack":
			var attack_script_params = ds_map_create();
			attack_script_params[? "power"] = 2;
			attack_script_params[? "hits"] = 3;
			attack_script_params[? "animators_finished"] = false;
			if(ds_list_size(player_obj.tokens) > 1){
				attack_script_params[? "target"] = "stack";
			}else{
				attack_script_params[? "target"] = "player";
			}
			
			
			show_debug_message("calling enemymulti_hit from opponent turn")
			enemy_multi_hit(attack_script_params);
			
			//enemy_attack(2);
			break;
		
		case "token":
			var token_params = ds_map_create();
			token_params[? "turn_animation_script"] = "sparkle_once";
			token_params[? "turn_script"] = "logos_heal";
			token_params[? "power"] = 1;
			token_params[? "time_to_live"] = 1;
			if(random(2) >= 1){
				token_params[? "defender"] = true;
			}
       
			add_token(opponent_obj, token_params);
			
			next_phase(); // until this case is animated
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
			
			next_phase(); // until this case is animated
		break;
		
		case "status":
			add_status(player_obj);
			break;
			
		default:
			var attack_script_params = ds_map_create();
			attack_script_params[? "power"] = 2;
			attack_script_params[? "cleanup_script"] = "next_phase_with_params";
			var target = target_coordinates(player_obj, "player");
			create_animator([target[0], target[1]], slash_spr, "resolve_at_animation_end", "enemy_attack_with_params", opponent_obj, attack_script_params);
			
			//enemy_attack(2);
			break;
	}
}