function handle_tokens(user){
	show_debug_message("handling tokens for " + user.name_str);
	
	var finished = true;
	relevant_tokens = user.tokens;//find_tokens_with(user, "turn_script"); // all of this user's tokens that do something every turn
	
	show_debug_message("number of relavant tokens: " + string(ds_list_size(relevant_tokens)));
	
	for(var i = 0; i < ds_list_size(relevant_tokens); i++;){
		var current_token = relevant_tokens[| i];
		
		var animation_script_name = current_token.token_script_params[? "turn_animation_script"];
		
		if(!is_undefined(current_token.token_script_params[? "turn_script"])){
			var action_script_name = current_token.token_script_params[? "turn_script"];
		}else{
			var action_script_name = false;
		}
		
			
		
		if(current_token.animation_status != "finished"){
			finished = false;
		}
		if(current_token.animation_status == "ready"){
			
			var token_expired = handle_token_ttl(current_token);
			
			var xxx = current_token;
			
			if(token_expired){
				break;
			}
			
			
			if(!is_undefined(animation_script_name)){
				token_animation_inst = instance_create_depth(current_token.x, current_token.y, -100, animator_obj);
				
				with(token_animation_inst){
					//sprite_index = slash_spr;
					animation_script = animation_script_name;
					action_script = action_script_name;
					script_params = current_token.token_script_params
					total_animation_steps = 0;
					animation_counter = 0;
					originating_instance = current_token;
				}
			
				current_token.animation_status = "animating";
			}else{
				current_token.animation_status = "execute";
			}
			
			break;
		}
		if(current_token.animation_status == "animating"){
			break;
		} 
		if(current_token.animation_status == "execute"){

			if(!is_undefined(action_script_name) && action_script_name != false){
				var scriptToCall = asset_get_index(current_token.turn_script);
				
				script_execute(scriptToCall, user, current_token.token_script_params)
			}
			current_token.animation_status = "finished";
			break;
		}
	}
	
	return finished;
	
}