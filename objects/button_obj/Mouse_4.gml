/// @description Insert description here


if(global.turn == "player"){
	if(is_string(win_condition_met())){
		room_restart();
	}
	clean_up_statuses(player_obj);
	player_obj.retorical_points = 3
	var hand_size = ds_list_size(hand_obj.hand) //instance_number(card_obj);
	var instances_to_destroy = ds_list_create();
	var indexes_to_delete = ds_list_create();
	
	for (var i = 0; i < ds_list_size(hand_obj.hand); ++i;){	
		if(is_undefined(hand_obj.hand[| i]) || !instance_exists(hand_obj.hand[| i])){
			show_debug_message("found a bad array element!: " + string(hand_obj.hand[| i]))
			ds_list_delete(hand_obj.hand, i);
		}
    }
	
	for (var i = 0; i < ds_list_size(hand_obj.hand); ++i;){
		card_inst = hand_obj.hand[| i];//instance_find(card_obj, i);
		if(card_inst.script_params[? "stays"] != true){
			card_json = card_to_json(card_inst);
			ds_list_insert(deck_obj.discard, 0, card_json);
			ds_list_add(instances_to_destroy, card_inst);
			ds_list_add(indexes_to_delete, i);
		}
    }
	
	
	
	for (var i = 0; i < ds_list_size(instances_to_destroy); ++i;){
		show_debug_message("instance I'm about to destroy: " + string(instances_to_destroy[| i].id));
		instance_destroy(instances_to_destroy[| i]);
    }
	
	show_debug_message("hand array size before cleanup: " + string(ds_list_size(hand_obj.hand)));
	
	for (var i = 0; i < ds_list_size(hand_obj.hand); ++i;){	
		if(is_undefined(hand_obj.hand[| i]) || !instance_exists(hand_obj.hand[| i])){
			show_debug_message("found a bad array element!: " + string(hand_obj.hand[| i]))
			ds_list_delete(hand_obj.hand, i);
		}
    }
	
	/**
	for (var i = 0; i < ds_list_size(indexes_to_delete); ++i;){	
		ds_list_delete(hand_obj.hand, indexes_to_delete[| i]);
    }
	**/
	
	show_debug_message("hand array size after cleanup: " + string(ds_list_size(hand_obj.hand)));
	
	for (var i = 0; i < ds_list_size(hand_obj.hand); ++i;){	
		card_inst = hand_obj.hand[| i];
		show_debug_message("card id in hand array: " + string(card_inst.id))
		card_inst.x = hand_obj.initial_card_location[0] + (hand_obj.x_offset * i);
    }
	
	var text_var = ds_list_size(hand_obj.hand);
	
	global.turn = "enemy";
}

