/// @description Insert description here

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