/// @description Insert description here

if(global.turn == "player" &&  player_obj.selecting_target != true){
	//  && ds_list_size(player_obj.statuses_that_need_handling(self)) > 0 && !all_statuses_finished(player_obj)
	
	if(player_obj.retorical_points >= cost ){
		player_obj.retorical_points = player_obj.retorical_points - cost
			if(needs_target == true){
				player_obj.selecting_target = true;
				selecting_target = true;
			} else {
				handle_card(self);
			}
	}
}