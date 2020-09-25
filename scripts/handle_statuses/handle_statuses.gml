function handle_statuses(user){
	for(var i = 0; i < ds_list_size(user.statuses); i++;){
		var current_status = user.statuses[| i];
		if(current_status.animation_status == "ready"){
			current_status.animation_status = "animating";
			//show_debug_message("changing sprite");
			current_status.sprite_index = shine_status;
			break;
		}
		if(current_status.animation_status == "animating"){
			break;
		}
		if(current_status.animation_status == "execute"){
			//show_debug_message("finished animating");
			var scriptToCall = asset_get_index(current_status.status_script);
			script_execute(scriptToCall, user, current_status.script_params)
			current_status.animation_status = "finished";
			break;
		}
	}
}