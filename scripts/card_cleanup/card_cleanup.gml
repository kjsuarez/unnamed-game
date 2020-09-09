// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function card_cleanup(card_inst){
	// Eventually everything below here should be abstracted out

	//pull out card metadata
	var scriptToCall = asset_get_index("card_to_json");
	var metadata = script_execute(scriptToCall, card_inst)

	//insert metadata into discard array
	ds_list_insert(deck_obj.discard, 0, metadata);

	//cleanup (for now I think it makes sense for each card script 
	//to handle it's own cleanup for 'retain' purposes)
	player_obj.temp_modifier = 1;
	
	// find this card in hand array and remove it
	for(i=0; i < ds_list_size(hand_obj.hand); i++;){
		show_debug_message("$$$RIGHT BEFORE IT HAPPENS$$$");
		if(hand_obj.hand[| i] == card_inst.id){
			show_debug_message("$$$WELL AT LEAST IT HAPPENS$$$");
			ds_list_delete(hand_obj.hand, i);
		}
	}
	
	for (var i = 0; i < ds_list_size(hand_obj.hand); ++i;){	
		if(is_undefined(hand_obj.hand[| i]) || !instance_exists(hand_obj.hand[| i])){
			show_debug_message("found a bad array element!: " + string(hand_obj.hand[| i]))
			ds_list_delete(hand_obj.hand, i);
		}
    }
	
	show_debug_message("hand ids after clearing " + string(card_inst.id) + ":");
	for(i=0; i < ds_list_size(hand_obj.hand); i++;){
		show_debug_message("card id: " + string(hand_obj.hand[| i].id));
	}
	
	instance_destroy(card_inst);
	hand_obj.card_in_action = false;
	if(is_string(win_condition_met())){
		room_restart();
	}
}