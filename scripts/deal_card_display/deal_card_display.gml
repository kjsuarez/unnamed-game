function deal_card_display(inst_x, inst_y, inst_z){
	//show_debug_message("");
	var full_deck_array = deck_display_obj.cards_not_in_hand_or_discard;
	ds_list_shuffle(full_deck_array);
	var var_metadata = full_deck_array[| deck_display_obj.counter];
		
	var card_inst = instance_create_depth(inst_x, inst_y, inst_z, card_display_obj);
	with(card_inst){
		image_xscale = deck_display_obj.card_scale;
		image_yscale = deck_display_obj.card_scale;
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
	ds_list_add(deck_display_obj.display_page, card_inst);
}

function deal_card_display_from(origin_index, origin_arry, inst_x, inst_y, inst_z){
	//show_debug_message("");
	var full_deck_array = origin_arry;
	var var_metadata = full_deck_array[| origin_index];
		
	var card_inst = instance_create_depth(inst_x, inst_y, inst_z, card_display_obj);
	with(card_inst){
		image_xscale = deck_display_obj.card_scale;
		image_yscale = deck_display_obj.card_scale;
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
					
	}
	ds_list_add(deck_display_obj.display_page, card_inst);
}