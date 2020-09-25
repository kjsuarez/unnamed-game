// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function no_discard_cleanup(card_inst){
	if(card_inst.outro_status == "ready"){
		
		card_inst.outro_status = "animating"
	}
	
	if(card_inst.outro_status == "finished"){

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
		if(is_string(win_condition_met())){
			room_restart();
		}
	}
	
	
}