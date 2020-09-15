/// @description Insert description here

//phases = [ "player_statuses", "player_tokens", "player", "opponent_statuses", "opponent_tokens", "opponent"];

if(global.turn == "player_statuses"){
	if(ds_list_size(statuses_that_need_handling(self)) > 0 && !all_statuses_finished(self)){
		handle_statuses(self);
	}else{
		next_phase();
	}
}
if(global.turn == "player_tokens" ){
	next_phase();
}
if(global.turn == "player"){
	// wait for player to end turn
}