/// @description poop

if(active_speech_bubble == false){
	if(speak_from_card == true){
		add_speech_bubble(player_obj, card_in_question.speech, false);
		active_speech_bubble = true;
	}
	if(speak_from_enemy == true){
		add_speech_bubble(opponent_obj, enemy_speech_in_question, enemy_question);
		active_speech_bubble = true;
	}
}