// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clean_up_statuses(user){

	if(all_statuses_finished(user)){
		for(var i = 0; i < ds_list_size(user.statuses); i++;){
			var current_status = user.statuses[| i];
			current_status.animation_status = "ready";
		}
	}
	
}