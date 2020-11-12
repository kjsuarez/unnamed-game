// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function card_cleanup(card_inst){
	if(card_inst.outro_status == "ready"){
		
		card_inst.outro_status = "animating"
	}
	
	if(card_inst.outro_status == "finished"){
		if(!is_undefined(card_inst.cleanup_script) && card_inst.cleanup_script != false){
			var cleanup_script = asset_get_index(card_inst.cleanup_script);
			script_execute(cleanup_script, card_inst);
		}else{
			//pull out card metadata
			var scriptToCall = asset_get_index("card_to_json");
			var metadata = script_execute(scriptToCall, card_inst)

			//insert metadata into discard array
			ds_list_insert(deck_obj.discard, 0, metadata);

			//cleanup (for now I think it makes sense for each card script 
			//to handle it's own cleanup for 'retain' purposes)
			player_obj.temp_modifier = 1;
	
	
			remove_card_from_hand(card_inst);
			//remove_card_from_hand_array(card_inst);
	
			clean_hand_array()
	
			//show_debug_message("hand ids after clearing " + string(card_inst.id) + ":");
			for(i=0; i < ds_list_size(hand_obj.hand); i++;){
				//show_debug_message("card id: " + string(hand_obj.hand[| i].id));
			}
	
			//instance_destroy(card_inst);
			hand_obj.card_in_action = false;
			player_obj.answering_question = false;
			if(is_string(win_condition_met())){
				room_restart();
			}
		}
		
	}
	
	
}