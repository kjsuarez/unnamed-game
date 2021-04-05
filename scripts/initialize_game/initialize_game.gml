function initialize_game(){
	global.load_last_room = false;
	
	global.game_state = instance_create_depth(0, 0, 0, game_state_obj);
	global.game_state_step = 0
	global.game_state_day = 0;
	global.game_state_context = false;
	global.game_state_flags = ds_map_create();
	
	global.game_state_flags[? "calm"] = true;
	
	global.context_boss_faced = false;
	global.game_state_previous_days  = ds_list_create();
	global.game_state_previous_events  = ds_list_create();
	global.next_event = false;
	global.player_coor = [128, 604];
	global.opponent_coor = [1280, 160];
	global.steps_to_boss = 3;//1;
	global.total_days = 2;
		
	global.current_win_event = false;
	global.current_lose_event = false;
	global.turn = false;
	global.turn_number = false;
	
	global.pixellari_font = font_add("Pixellari.ttf", 70, true, true, 32, 128);
}