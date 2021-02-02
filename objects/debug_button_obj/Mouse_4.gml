/// @description Insert description here
initialize_game();

global.game_state_day = 1;
ds_list_add(global.game_state_previous_events, "start-room");
global.game_state_context = "internet";

reset_deck();
instance_destroy(debug_button_obj);
build_specified_event(next_event_id);