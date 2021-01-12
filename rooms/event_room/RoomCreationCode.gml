// for some reason referencing global.game_state_previous_events (a ds_list)
// in this context breaks without this.
// I don't know how or why ?!
ds_list_create();

if(global.load_last_room != false) {
	
	/*
	var type_of = typeof(global.game_state_previous_events);
	show_debug_message(" it's a " + type_of);
	
	var previous_events_size = ds_list_size(global.game_state_previous_events);
	var last_event_id = global.game_state_previous_events[| previous_events_size -1];
	show_debug_message("event to load: " + string(last_event_id));
	*/
	
	build_specified_event(global.load_last_room);
	global.load_last_room = false;
	return;
}

if(global.game_state_day == 0){
	
	var previous_events_size = ds_list_size(global.game_state_previous_events);
	build_event_for_context("start");
}

if(global.next_event != false){
	
	build_specified_event(global.next_event);
	
	global.next_event = false;
}











