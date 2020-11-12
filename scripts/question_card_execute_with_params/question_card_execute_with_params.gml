function question_card_execute_with_params(animator_inst, script_params){
	//Meant to be run as a cleanup script, finds a card and runs it at no cost (incomplete)
	
	// find active card, 
	for(i=0; i < ds_list_size(hand_obj.hand); i++;){
		var card_inst = hand_obj.hand[| i];
		if(card_inst.answering_question == true){
			
			show_debug_message("handling card from cleanup step");
			// run click script on it
			//handle_card(card_inst)
			card_cleanup(card_inst)
		}
	}
	next_phase_with_params(animator_inst, script_params)
}