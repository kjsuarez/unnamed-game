
function enemy_recursive_cleanup(original_inst, script_params){
	var script_params_clone = ds_map_create();
	ds_map_copy(script_params_clone, script_params);
	var counter = script_params_clone[? "hits"];

	
	counter -= 1;
	script_params_clone[? "hits"] = counter;
	if(script_params_clone[? "animators_finished"] != true){
		if(counter == 1){
			script_params_clone[? "animators_finished"] = true;
			
			// because script_params is an instance variable of the original animator
			// it's contents are still effecting the original animator.
			enemy_multi_hit(script_params_clone);
			return true;
		}
	
		if(counter > 0){
			
			show_debug_message("calling enemy multi_hit from inside recursive function")
			enemy_multi_hit(script_params_clone);
			return false;
		}
	}else{
		show_debug_message("inside recursive damage, animators_finished is true, do nothing");
		next_phase();
	}

	

}