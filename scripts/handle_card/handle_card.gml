// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_card(card_inst){
	if(variable_instance_exists(card_inst, "speech")){
		// set dialog to speak_from_card = true, set cards_in_question to the card in question
		show_debug_message(" ### editing dialog_state_obj ###")
		dialog_state_obj.speak_from_card = true;
		dialog_state_obj.card_in_question = card_inst;
	}else{
		act_on_card(card_inst);
	}
}