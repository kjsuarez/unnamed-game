/// @description Insert description here

if(global.turn == "player" ){
	//  && ds_list_size(player_obj.statuses_that_need_handling(self)) > 0 && !all_statuses_finished(player_obj)
	
	
	if(player_obj.retorical_points >= cost ){
		
		player_obj.retorical_points = player_obj.retorical_points - cost
			//show_debug_message("RP: " + string(player_obj.retorical_points));
			hand_obj.card_in_action = true;
			// do script
			var scriptToCall = asset_get_index(script_name);
			var metadata = script_execute(scriptToCall, self, script_params);
		
	}
	
}