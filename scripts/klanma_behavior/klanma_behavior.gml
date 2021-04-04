function klanma_choose_behavior(){
	
	/*****/
	
	//first third responses
	var first_third_moves = ds_list_create();
		ds_list_add(first_third_moves, "res_1_1");
		ds_list_add(first_third_moves, "res_1_2");
		ds_list_add(first_third_moves, "res_1_3");
	
	//2nd third responses
	var second_third_moves = ds_list_create();
		ds_list_add(second_third_moves, "res_2_1");
		ds_list_add(second_third_moves, "res_2_2");
		//ds_list_add(second_third_moves, "res_2_3");
		
	//3rd third responses
	var third_third_moves = ds_list_create();
		ds_list_add(third_third_moves, "res_3_1");
		ds_list_add(third_third_moves, "res_3_2");
		ds_list_add(third_third_moves, "res_3_3");
		ds_list_add(third_third_moves, "res_3_4");
		ds_list_add(third_third_moves, "res_3_5");
		ds_list_add(third_third_moves, "res_3_6");
		ds_list_add(third_third_moves, "res_3_7");
		ds_list_add(third_third_moves, "res_3_8");
		
	var total_enemy_damage = get_total_damage(opponent_obj);


	if(total_enemy_damage >= 6){
		var possible_moves = third_third_moves;
		if(opponent_obj.monologue_counter < ds_list_size(possible_moves)){
			var used_move = possible_moves[| opponent_obj.monologue_counter];
			opponent_obj.monologue_counter += 1;
		} else {
			var used_move = "";
		
		}
		
		return used_move;
	}

	if(total_enemy_damage >= 3){
		var possible_moves = second_third_moves;
	} else {
		var possible_moves = first_third_moves;
	}

	ds_list_shuffle(possible_moves);
	var used_move = possible_moves[| irandom(ds_list_size(possible_moves) - 1)];
	return used_move;
	
}

function klanma_speech_behavior(current_move){
//turn behavior:
	
	
	//show_debug_message("current move: " + current_move);
	
	switch (current_move)
    {
		case "res_1_1":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "I saw a ANTIFA at the grocrery store!";
			opponent_obj.sprite_index = granny_neutral_spr;
			break;
			
		case "res_1_2":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "It's just so sad that people are being cruel to the police.";
			opponent_obj.sprite_index = granny_neutral_spr;
			break;
			
		case "res_1_3":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "Who will protect us from all of the terrorists?";
			opponent_obj.sprite_index = granny_neutral_spr;
			break;
			
		case "res_2_1":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "The main-stream media is trying to track me! They came to my house!";
			break;
			
		case "res_2_2":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "You're not going to get vaccinated are you? It's 90% microchips!";
			break;
		
		case "res_2_3":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "Obama did 9/11!";
			break;
			
		case "res_3_1":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "I remember when this country was safe.";
			break;
			
		case "res_3_2":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "I used to know the rules.";
			break;
			
		case "res_3_3":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "Then one day, I just didn't belong anywhere.";
			break;
			
		case "res_3_4":
		dialog_state_obj.speak_from_enemy = true;
		dialog_state_obj.enemy_speech_in_question = "My granddaughter says she has a new name now.";
		break;
			
		case "res_3_5":
		dialog_state_obj.speak_from_enemy = true;
		dialog_state_obj.enemy_speech_in_question = "How can that be? She gets so upset with me but I'm only trying to help her.";
		break;
		
		case "res_3_6":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "I tried so hard to take care of this family, and then suddenly I'm not even a part of it.";
			break;
		
		case "res_3_7":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "I'm not a part of much of anything anymore. Except my facebook group.";
			break;
		case "res_3_8":
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "Those people know what a family is.";
			break;
		
		/**
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
		
		**/	
		default:
			dialog_state_obj.speak_from_enemy = true;
			dialog_state_obj.enemy_speech_in_question = "Donald Trump is just a more charismatic standin for Regan.";
			
			break;
	}
}

function klanma_act_on_question(question, answer){
	switch (question)
    {
		case "want_shot":
			if(answer == true){
				opponent_obj.behavior_choice = "drink_resp_yes";
			} else {
				opponent_obj.behavior_choice = "drink_resp_no";
			}
			klanma_speech_behavior(opponent_obj.behavior_choice);
			break; 
		default:
		klanma_act_on_behavior("token");
		break;
	}
}

function klanma_act_on_behavior(current_move){
//turn behavior:
	
	
	//show_debug_message("current move: " + current_move);
	
	switch (current_move)
    {	
		case "res_3_8":
			encounter_state_obj.alternative_victor = "player";
			handle_encounter_conclusion();
			
			break;
		
		/*
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
		*/
			
		default:
			//question_card_execute_with_params(false, false);
			var attack_script_params = ds_map_create();
			attack_script_params[? "power"] = 2;
			attack_script_params[? "hits"] = 3;
			attack_script_params[? "animators_finished"] = false;
			if(ds_list_size(player_obj.tokens) > 1){
				attack_script_params[? "target"] = "player";
			}else{
				attack_script_params[? "target"] = "player";
			}
			
			
			show_debug_message("calling enemymulti_hit from opponent turn")
			enemy_multi_hit(attack_script_params);
			
			//enemy_attack(2);
			break;
			break;
	}
}
/*
function klanma_intro_script(){
	
	
	var x1 = ds_map_create();
	x1[? "speaker"] = opponent_obj;
	x1[? "line"] = "How dare you post a Lucky Charms® meme on this dedicated Captain Crunch® forum!";
	var x2 = ds_map_create();
	x2[? "speaker"] = player_obj;
	x2[? "line"] = "Your opinios don't matter today and they have never ever mattered.";
	
	var intro_script = ds_list_create();
	ds_list_add(intro_script, x1, x2);
	//array_push(intro_script, x1, x2);
	show_debug_message("Type should be array: " + typeof(intro_script));
	
	return intro_script;
}
*/