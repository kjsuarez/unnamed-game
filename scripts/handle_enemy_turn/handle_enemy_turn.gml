
function handle_enemy_turn(){
	
	// if behavior_script var exists, call it
	if(variable_instance_exists(opponent_obj, "behavior_script")){
		
		var behaviorScriptToCall = asset_get_index(opponent_obj.behavior_script);
		var choice = script_execute(behaviorScriptToCall);
		opponent_obj.behavior_choice = choice;
		var speechScriptToCall = asset_get_index(opponent_obj.speech_behavior_script);
		script_execute(speechScriptToCall, choice);
	}else{
		default_turn_behavior();	
	}
}