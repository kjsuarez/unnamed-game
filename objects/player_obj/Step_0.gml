/// @description Insert description here
if(global.turn == "player" && ds_list_size(statuses_that_need_handling(self)) > 0 && !all_statuses_finished(self)){
	handle_statuses(self);
}