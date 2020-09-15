/// @description Insert description here


/**
if(global.turn == "enemy"){
	if(ds_list_size(statuses_that_need_handling(self)) > 0 && !all_statuses_finished(self)){
		handle_statuses(self);
	}else{
		thinking += 1;
		if(thinking > 50){
			handle_enemy_turn()
		
		
			if(is_string(win_condition_met())){
				room_restart();
			}
			thinking = 0;	
			deal_hand();
			global.turn = "player";
			clean_up_statuses(self);
		}
		
	}
}
*/

if(global.turn == "opponent_statuses"){
	if(ds_list_size(statuses_that_need_handling(self)) > 0 && !all_statuses_finished(self)){
		handle_statuses(self);
	}else{
		next_phase();
	}
}
if(global.turn == "opponent_tokens" ){
	next_phase();
}
if(global.turn == "opponent"){
	thinking += 1;
	if(thinking > 50){
		handle_enemy_turn()
		if(is_string(win_condition_met())){
			room_restart();
		}
		thinking = 0;	
		deal_hand();
		next_phase();
		clean_up_statuses(self);
	}
}