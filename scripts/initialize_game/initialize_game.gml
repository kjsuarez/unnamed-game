function initialize_game(){
	global.game_state = instance_create_depth(0, 0, 0, game_state_obj);
	global.game_state_step = 0
	global.game_state_day = 0;
	global.game_state_context = false;
	global.context_boss_faced = false;
	global.game_state_previous_days  = ds_list_create();
	global.next_event = false;
	global.opponent_coor = [1280, 160];
	global.steps_to_boss = 1;
	global.total_days = 2;
}