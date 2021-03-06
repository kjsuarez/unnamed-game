/// @description Insert description here


if(!animating && !encounter_concluded){
	if(global.turn == "opponent_statuses"){
		var thing_to_look_at = statuses_that_need_handling(self);
		var second_thing = all_statuses_finished(self);
		
		if(ds_list_size(statuses_that_need_handling(self)) > 0 && !all_statuses_finished(self)){
			handle_statuses(self);
		}else{
			next_phase();
		}
	}
	if(global.turn == "opponent_tokens" ){
		var finished_handling_tokens = handle_tokens(self);
		if(finished_handling_tokens){
			set_tokens_to_ready(self);
			next_phase();
		}
	}
	if(global.turn == "opponent"){
		thinking += 1;
		if(thinking > 50){
			
			handle_enemy_turn()
			if(is_string(win_condition_met())){
				handle_encounter_conclusion();
				return;
			}
			thinking = 0;	
			
			deal_hand();
			show_debug_message("hitting next phase at end of enemy turn...")
			next_phase();
			show_debug_message("phase is: " + global.turn);
			clean_up_statuses(self);
		}
	}
}