/// @description Insert description here
if(transition == true){
	if(transition_counter > transition_ceiling){
		transition = false;
		transition_counter = 0;
		current_transition_coor = init_transition_coor;
		build_event_for_context(global.game_state_context)
	} else {
		
		transition_counter += 1;
		var new_coor = [current_transition_coor[0] + transition_x_increment, current_transition_coor[1]]
		current_transition_coor = new_coor;
		show_debug_message( string(current_transition_coor) )
	}
}