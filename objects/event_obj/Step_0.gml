/// @description Insert description here
if(check_for_step == true){
	
	if(!variable_instance_exists(self, "no_step")){
		global.game_state_step += 1;
	} else {
		if(no_step == false){
			global.game_state_step += 1;
		}
	}
	check_for_step = false;
}