function statuses_that_need_handling(user){
	statuses_that_need_attention = ds_list_create();
	
	for(var i = 0; i < ds_list_size(user.statuses); i++;){
		current_status = user.statuses[| i];
		if(current_status.animation_status != "finished"){
			ds_list_add(statuses_that_need_attention, current_status);
		}
	}
	return statuses_that_need_attention;
}