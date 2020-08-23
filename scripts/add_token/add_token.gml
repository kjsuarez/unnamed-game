function add_token(card_inst, script_params) {
	inst_x = token_set_obj.initial_token_location[0];
	inst_y = token_set_obj.initial_token_location[1] + (token_set_obj.y_offset * token_set_obj.token_counter);;
	inst_z = 0;
	//deal_new_card(card_x, card_y, card_counter);
		
	var token_inst;
	token_inst = instance_create_depth(inst_x, inst_y, inst_z, token_obj);
	with(token_inst){
		image_xscale = token_set_obj.token_scale;
		image_yscale = token_set_obj.token_scale;
		face_text = "test";
		token_script_params = script_params;
	}

	token_set_obj.token_counter += 1;

	card_cleanup(card_inst)


}
