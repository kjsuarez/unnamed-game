function flirty_girdy_choose_behavior(){
	var moves_arry = ["attack", "token", "multiplier", "status"];
	var moves = ds_list_create();
	ds_list_add(moves, "attack");
	//ds_list_add(moves, "multi_attack");
	//ds_list_add(moves, "token");
	//ds_list_add(moves, "multiplier");
	//ds_list_add(moves, "status");
	ds_list_shuffle(moves);
	if(global.turn_number == 1){
		return "question1"
	} else {
		return moves[| 0];
	}
	
}

function flirty_girdy_speech_behavior(current_move){
//turn behavior:
	
	
	//show_debug_message("current move: " + current_move);
	
	switch (current_move)
    {
		case "question1":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_question = "want_shot";
			dialog_state_obj.enemy_speech_in_question = "Wanna do a shot?";
			break;
			
		case "drink_resp_no":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "BOOOO!";
			dialog_state_obj.enemy_question = 0;
			break;
			
		case "drink_resp_yes":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "Cheers!";
			dialog_state_obj.enemy_question = 0;
			break;	
		
		case "attack":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "You cute.";
			break;
		
		case "multi_attack":
			
			break;
		
		case "token":
			
			break;
		
		case "multiplier":
			
		break;
		
		case "status":
		
			break;
			
		default:
			
			break;
	}
}

function flirty_girdy_act_on_question(question, answer){
	switch (question)
    {
		case "want_shot":
			if(answer == true){
				opponent_obj.behavior_choice = "drink_resp_yes";
			} else {
				opponent_obj.behavior_choice = "drink_resp_no";
			}
			flirty_girdy_speech_behavior(opponent_obj.behavior_choice);
			break; 
		default:
		flirty_girdy_act_on_behavior("token");
		break;
	}
}

function flirty_girdy_act_on_behavior(current_move){
//turn behavior:
	
	
	//show_debug_message("current move: " + current_move);
	
	switch (current_move)
    {	
		case "drink_resp_yes":
			var attack_script_params = ds_map_create();
			attack_script_params[? "power"] = 2;
			attack_script_params[? "cleanup_script"] = "question_card_execute_with_params";
			var target = target_coordinates(player_obj, "stack");
			create_animator([target[0], target[1]], slash_spr, "resolve_at_animation_end", "enemy_attack_with_params", opponent_obj, attack_script_params);
			break;
		case "drink_resp_no":
			question_card_execute_with_params(false, false);
			break;
		case "attack":
			var attack_script_params = ds_map_create();
			attack_script_params[? "power"] = 2;
			attack_script_params[? "cleanup_script"] = "next_phase_with_params";
			var target = target_coordinates(player_obj, "stack");
			attack_script_params[? "target"] = "stack";
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