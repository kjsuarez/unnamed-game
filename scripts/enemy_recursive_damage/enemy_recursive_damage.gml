
function enemy_recursive_damage(original_inst, script_params){
	var counter = script_params[? "hits"];
	
	show_debug_message("skipping damage function, counter = " + string(counter))
	enemy_attack_with_params(false, script_params);
	
	counter -= 1;
	script_params[? "hits"] = counter;
	if(script_params[? "animators_finished"] != true){
		if(counter == 0){
			script_params[? "animators_finished"] = true;
			//enemy_multi_hit(script_params);
			return true;
		}
	
		if(counter > 0){
			
			show_debug_message("calling enemy multi_hit from inside recursive function")
			enemy_multi_hit(script_params);
			return false;
		}
	}else{
		show_debug_message("inside recursive damage, animators_finished is true, do nothing");
	}

	

}

/**
function do_recursive_damage(card_inst, script_params) {
	var counter = script_params[? "hits"];
	
	//add temp modifier
	var total_damage = player_damage_for(card_inst);
	//determine if tokens present
	enemy_tokens = opponent_obj.tokens
	if(ds_list_size(enemy_tokens) > 0){
		
		var token_count = ds_list_size(enemy_tokens);
		var token_inst = enemy_tokens[| token_count - 1];
		ds_list_delete(enemy_tokens, token_count - 1);
		instance_destroy(token_inst);
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
		player_obj.temp_modifier = 1;
	}
	
	if(counter > 1){
		counter -= 1;
		script_params[? "hits"] = counter;
		
		multi_hit_attack(card_inst, script_params);
		
	}else{
		card_cleanup(card_inst);
	}
	
}

**/
