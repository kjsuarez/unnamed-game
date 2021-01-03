function end_encounter(){
	var victor = win_condition_met();
	if(victor == "player"){
		global.next_event = encounter_state_obj.win_event;
	} else {
		global.next_event = encounter_state_obj.lose_event;
	}	
	room_goto(event_room);
}