/// @description Insert description here

show_debug_message("start button click registered");

global.game_state = instance_create_depth(0, 0, 0, game_state_obj);

room_goto(event_room);