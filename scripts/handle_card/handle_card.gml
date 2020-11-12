function players_turn(){
	return global.turn == "player" && player_obj.selecting_target != true && player_obj.answering_question != true
}

function player_can_answer_question(){
	return global.turn == "resolve_opponent_attack" && dialog_state_obj.enemy_question != 0 && player_obj.selecting_target != true && player_obj.answering_question != true
}

// 
function handle_card(card_inst){

	if(card_inst.needs_target == true){
		//duplicate block
		if(dialog_state_obj.enemy_question != 0){
			dialog_state_obj.question_response = self.binary_answer;
			card_inst.answering_question = true;
			player_obj.answering_question = true;
			// find enemy speech bubble
			// cleanup enemy speech bubble
			for (var i = 0; i < instance_number(speech_bubble_obj); ++i;)
			{
				var bubble_inst = instance_find(speech_bubble_obj,i);
				if(bubble_inst.owner == opponent_obj){
					cleanup_speech_bubble(bubble_inst);
				}
			}
		} else {
			player_obj.selecting_target = true;
			card_inst.selecting_target = true;
		}
					
					
	} else {
					
		//duplicate block
		if(dialog_state_obj.enemy_question != 0){
			dialog_state_obj.question_response = card_inst.binary_answer;
			card_inst.answering_question = true;
			player_obj.answering_question = true;
			// find enemy speech bubble
			// cleanup enemy speech bubble
			for (var i = 0; i < instance_number(speech_bubble_obj); ++i;)
			{
				var bubble_inst = instance_find(speech_bubble_obj,i);
				if(bubble_inst.owner == opponent_obj){
					cleanup_speech_bubble(bubble_inst);
				}
			}
		} else {
			handle_card_dialog_or_act_on_card(self);
		}
				
	}
	
	
}

function handle_card_dialog_or_act_on_card(card_inst){
	if(variable_instance_exists(card_inst, "speech")){
		// set dialog to speak_from_card = true, set cards_in_question to the card in question
		show_debug_message(" ### editing dialog_state_obj ###")
		dialog_state_obj.speak_from_card = true;
		dialog_state_obj.card_in_question = card_inst;
	}else{
		act_on_card(card_inst);
	}
}