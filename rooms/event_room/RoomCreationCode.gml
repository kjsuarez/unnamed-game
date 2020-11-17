if(global.game_state_day == 0){
	build_event_for_context("start");
}

if(global.next_event != false){
	
	build_specified_event(global.next_event);
	
	global.next_event = false;
}











