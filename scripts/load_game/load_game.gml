// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game(){
	var save_file_name = "game_state.sav";
	if(file_exists(save_file_name)){
		
		var game_metadata_hash = load_json(save_file_name);
		
		global.context_boss_faced = game_metadata_hash[? "boss_faced"];
		global.current_win_event = game_metadata_hash[? "current_win_event"];
		global.current_lose_event = game_metadata_hash[? "current_lose_event"];

		global.game_state_context = game_metadata_hash[? "context"];
		global.game_state_day = game_metadata_hash[? "day"];
		global.game_state_flags = game_metadata_hash[? "flags"];

		global.game_state_previous_events = game_metadata_hash[? "previous_events"];
		
		show_debug_message("first it's a " + typeof(global.game_state_previous_events));
		if(ds_list_size(global.game_state_previous_events) > 0) {
			var previous_events_size = ds_list_size(global.game_state_previous_events);
			var last_event_id = global.game_state_previous_events[| previous_events_size -1];
			global.load_last_room = last_event_id;
		}
		

		global.game_state_step = game_metadata_hash[? "step"];
		global.next_event = game_metadata_hash[? "next_event"];
		global.steps_to_boss = game_metadata_hash[? "steps_to_boss"];
		global.total_days = game_metadata_hash[? "total_days"];
		global.turn = game_metadata_hash[? "turn"];
		global.turn_number = game_metadata_hash[? "turn_number"];
		
		ds_map_destroy(game_metadata_hash);
		show_debug_message("then it's a " + typeof(global.game_state_previous_events));
	}
	else{
		show_error("Missing save file! :O", true);
	}
}