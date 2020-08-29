function add_status(combatant){
	inst_x = combatant.initial_status_location[0];
	inst_y = combatant.initial_status_location[1] + (combatant.y_offset * ds_list_size(combatant.statuses));
	inst_z = 0;
		
	var status_inst;
	status_inst = instance_create_depth(inst_x, inst_y, inst_z, status_obj);
	with(status_inst){
		image_xscale = status_obj.token_scale;
		image_yscale = status_obj.token_scale;
		face_text =  "doubt: " + string(id);
		token_script_params = ds_map_create();
		status_script = "experience_doubt";
		activation_step = "start";
		script_params = ds_map_create();
	}
	ds_list_add(combatant.statuses, status_inst);
}
