function deal_card_selector(inst_x, inst_y, inst_z){
	//show_debug_message("");
	var all_cards = card_selector_menu_obj.all_cards_array;
	ds_list_shuffle(all_cards);
	var var_metadata = all_cards[| irandom(ds_list_size(all_cards) - 1)];
		
	var card_inst = instance_create_depth(inst_x, inst_y, inst_z, card_selector_obj);
	with(card_inst){
		image_xscale = card_selector_menu_obj.card_scale;
		image_yscale = card_selector_menu_obj.card_scale;
		metadata = var_metadata;
		damage = var_metadata[? "power"];
		cost = var_metadata[? "cost"];
		type = var_metadata[? "type"];
		binary_answer = var_metadata[? "binary_answer"];
		details = var_metadata[? "face_text"];
		script_name = var_metadata[? "script"];
		script_params = var_metadata[? "script_params"];
		outro_script = var_metadata[? "outro_script"];
		cleanup_script = var_metadata[? "cleanup_script"];
		
		/*
		if(var_metadata[? "needs_target"]){
			needs_target = var_metadata[? "needs_target"];
		} else {
			needs_target = false;
		}
			
		if(!is_undefined(var_metadata[? "speech"])){ 
			speech =  var_metadata[? "speech"];
		}
		*/
			
	}
	ds_list_add(card_selector_menu_obj.hand, card_inst);
}