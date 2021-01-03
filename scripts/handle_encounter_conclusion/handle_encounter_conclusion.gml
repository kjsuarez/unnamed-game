function handle_encounter_conclusion(){
	var victor = win_condition_met();
	if(victor == "player"){
		if(!is_undefined(opponent_obj.defeat_script)){
			show_debug_message("opponent has lost, setting outro_in_progress to true")
			opponent_obj.outro_script = opponent_obj.defeat_script;
			dialog_state_obj.outro_in_progress = true;
		} else {
			end_encounter();
		}
		
	} else {
		if(!is_undefined(opponent_obj.victory_script)){
			opponent_obj.outro_script = opponent_obj.victory_script;
			dialog_state_obj.outro_in_progress = true;
		} else {
			end_encounter();
		}
	}	
	
}