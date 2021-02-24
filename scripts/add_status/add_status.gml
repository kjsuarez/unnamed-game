function add_status(combatant, card_script_params){
	var safe_script_params = ds_map_create();
	ds_map_copy(safe_script_params, card_script_params);
	
	
	inst_x = combatant.initial_status_location[0];
	inst_y = combatant.initial_status_location[1] + (combatant.y_offset * ds_list_size(combatant.statuses));
	inst_z = -10;
	
	if(
		!is_undefined(safe_script_params[?"face_text"]) &&
		!is_undefined(safe_script_params[?"status_script"]) &&
		!is_undefined(safe_script_params[?"activation_step"])
	){
		var status_face_text = safe_script_params[?"face_text"];
		var status_call_script = safe_script_params[?"status_script"];
		var status_activation_step = safe_script_params[?"activation_step"];
	} else {
		show_error("Missing script_params needed to build status instance.", true);
	}
	
	
	var status_inst;
	status_inst = instance_create_depth(inst_x, inst_y, inst_z, status_obj);
	with(status_inst){
		image_xscale = status_obj.token_scale;
		image_yscale = status_obj.token_scale;
		face_text =  status_face_text + string(id);
		token_script_params = ds_map_create();
		status_script = status_call_script;
		activation_step = status_activation_step;
		script_params = safe_script_params;
	}
	
	ds_list_add(combatant.statuses, status_inst);
}