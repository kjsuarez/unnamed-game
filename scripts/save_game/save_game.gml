// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(){
	var save_file_name = "game_state.sav";
	var game_metadata_hash = ds_map_create();
	//game_variables = ds_list_create();
	game_metadata_hash[? "boss_faced"] = global.context_boss_faced;
	game_metadata_hash[? "current_win_event"] = global.current_win_event;
	game_metadata_hash[? "current_lose_event"] = global.current_lose_event;

	// need to break global.game_state into discrete parts
	//Also game_state_obj doesn't seem to have any vars of its own...?
	//global.game_state = instance_create_depth(0, 0, 0, game_state_obj);
	//game_metadata_hash[? "game_state"] = global.game_state;

	game_metadata_hash[? "context"] = global.game_state_context;
	game_metadata_hash[? "day"] = global.game_state_day;
	game_metadata_hash[? "flags"] = global.game_state_flags;

	//game_state_previous_days isn't currently being used for anything, 
	//but it stores whole game_state objects which is anoying. 
	//Refactor.
	//game_metadata_hash[? "previous_days"] = global.game_state_previous_days

	// game_state_previous_events is safe because it's an array of strings
	ds_map_add_list(game_metadata_hash, "previous_events", global.game_state_previous_events);
	show_debug_message("size of previous events: " + string(ds_list_size(global.game_state_previous_events)));

	game_metadata_hash[? "step"] = global.game_state_step;
	game_metadata_hash[? "next_event"] = global.next_event;
	game_metadata_hash[? "steps_to_boss"] = global.steps_to_boss;
	game_metadata_hash[? "total_days"] = global.total_days;
	game_metadata_hash[? "turn"] = global.turn;
	game_metadata_hash[? "turn_number"] = global.turn_number;

	var game_metadata_json = json_encode(game_metadata_hash);
	show_debug_message(game_metadata_json);
	save_json_to_file(save_file_name, game_metadata_json);
	ds_map_destroy(game_metadata_hash);
}