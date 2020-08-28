
function experience_statuses_for(user, step){
	
	for(var i = 0; i < ds_list_size(user.statuses); i++;){
		var status_inst = user.statuses[| i];
		if(status_inst.activation_step == step){
			status_inst.sprite_index = shine_status;
			var total_animation_frames = room_speed * 10;
			for(var animation_counter = 0; animation_counter < total_animation_frames; animation_counter++;){}
			var scriptToCall = asset_get_index(status_inst.status_script);
			script_execute(scriptToCall, user, status_inst.script_params)
			status_inst.sprite_index = status;
		}	
	}
}