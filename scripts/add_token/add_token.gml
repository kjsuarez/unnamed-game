function add_token(combatant, token_params){
	
	inst_x = combatant.initial_token_location[0];
	inst_y = combatant.initial_token_location[1] + (token_set_obj.y_offset * ds_list_size(combatant.tokens));
	inst_z = -10;
		
	var token_inst;
	token_inst = instance_create_depth(inst_x, inst_y, inst_z, token_obj);
	with(token_inst){
		image_xscale = token_set_obj.token_scale;
		image_yscale = token_set_obj.token_scale;
		face_text = "test: " + string(id);
		token_script_params = token_params;
		owner = combatant;
		if(is_numeric(token_params[? "time_to_live"])){
			time_to_live = token_params[? "time_to_live"];
		}
		if(is_string(token_params[? "animation_script"])){
			animation_script = token_params[? "animation_script"];
		}
		if(is_string(token_params[? "turn_script"])){
			turn_script = token_params[? "turn_script"];
		}
		if(token_params[? "defender"]){
			defender = true;
		}else{
			defender = false;
		}
		
	}
	
	ds_list_add(combatant.tokens, token_inst);
}