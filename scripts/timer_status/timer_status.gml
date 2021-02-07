function timer_status(user, script_params){
	show_debug_message("Now I will do TIMER things")
	// check if a timer is present
	if(instance_exists(timer_obj)) {
		// if timer counter is 0 end game 
		if(timer_obj.count_down == 0) {
			encounter_state_obj.alternative_victor = "opponent";
			handle_encounter_conclusion();
		} else {
			timer_obj.count_down -=  1;
		}
	} else {
		// if a timer is not present create one
		timer_inst = instance_create_depth(100, 100, -10, timer_obj);
		with(timer_inst){
			image_xscale = 2;
			image_yscale = 2;
		}
	}
	
	
}