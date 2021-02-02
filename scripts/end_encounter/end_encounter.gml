function end_encounter(){
	var victor = win_condition_met();
	if(victor == "player"){
		global.next_event = encounter_state_obj.win_event;
	} else {
		global.next_event = encounter_state_obj.lose_event;
	}
	
	show_debug_message("setting next event to: " + global.next_event);
	
	room_goto(event_room);
}