function all_statuses_finished(user){
	finished_statuses = ds_list_create();
	for(var i = 0; i < ds_list_size(user.statuses); i++;){
		var current_status = user.statuses[| i];
		if(current_status.animation_status == "finished"){
			ds_list_add(finished_statuses, current_status);
		}	
	}
	
	return ds_list_size(finished_statuses) == ds_list_size(user.statuses)
}