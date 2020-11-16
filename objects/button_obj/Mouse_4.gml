/// @description Insert description here


if(global.turn == "player"){
	if(is_string(win_condition_met())){
		//room_restart();
		handle_encounter_conclusion();
	}
	clean_up_statuses(player_obj);
	player_obj.retorical_points = 3
	var instances_to_destroy = ds_list_create();
	var indexes_to_delete = ds_list_create();
	
	clean_hand_array();
	
	for (var i = 0; i < ds_list_size(hand_obj.hand); ++i;){
		card_inst = hand_obj.hand[| i];
		if(card_inst.script_params[? "stays"] != true){
			card_json = card_to_json(card_inst);
			ds_list_insert(deck_obj.discard, 0, card_json);
			ds_list_add(instances_to_destroy, card_inst);
			ds_list_add(indexes_to_delete, i);
		}
    }
	
	
	
	for (var i = 0; i < ds_list_size(instances_to_destroy); ++i;){
		remove_card_from_hand(instances_to_destroy[| i]);
    }
	
	//show_debug_message("hand array size before cleanup: " + string(ds_list_size(hand_obj.hand)));
	
	clean_hand_array();
		
	//show_debug_message("hand array size after cleanup: " + string(ds_list_size(hand_obj.hand)));
	
	// reset x position for any cards that don't get discarded at end of turn
	for (var i = 0; i < ds_list_size(hand_obj.hand); ++i;){	
		card_inst = hand_obj.hand[| i];
		//show_debug_message("card id in hand array: " + string(card_inst.id))
		card_inst.x = hand_obj.initial_card_location[0] + (hand_obj.x_offset * i);
    }
	
	var text_var = ds_list_size(hand_obj.hand);
	
	next_phase();
}

