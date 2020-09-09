function deal_new_card(inst_x, inst_y, inst_z) {
	{
		show_debug_message("deck size: " + string(ds_list_size(deck_obj.deck_array)));
		if(ds_list_size(deck_obj.deck_array) < 1){
			shuffle_discard_in();
		}
		var metadata = deck_obj.deck_array[| 0];
		//ds_list_insert(deck_obj.discard, 0, metadata);
		ds_list_delete(deck_obj.deck_array, 0);
	
	
		var card_inst = instance_create_depth(inst_x, inst_y, inst_z, card_obj);
		with(card_inst){
			image_xscale = hand_obj.card_scale;
			image_yscale = hand_obj.card_scale;
			damage = metadata[? "power"];
			cost = metadata[? "cost"];
			type = metadata[? "type"];
			details = metadata[? "face_text"];
			script_name = metadata[? "script"];
			script_params = metadata[? "script_params"]
		}
		ds_list_add(hand_obj.hand, card_inst);
	}
}
