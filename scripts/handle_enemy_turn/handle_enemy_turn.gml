
function handle_enemy_turn(){
	
	// if behavior_script var exists, call it
	if(variable_instance_exists(opponent_obj, "behavior_script")){
		
		var scriptToCall = asset_get_index(opponent_obj.behavior_script);
		script_execute(scriptToCall);
	}else{
		default_turn_behavior();	
	}
}