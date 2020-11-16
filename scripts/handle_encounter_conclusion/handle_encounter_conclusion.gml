// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_encounter_conclusion(){
	var victor = win_condition_met();
	if(victor == "player"){
		global.next_event = encounter_state_obj.win_event;
	} else {
		global.next_event = encounter_state_obj.lose_event;
	}	
	room_goto(event_room);
}