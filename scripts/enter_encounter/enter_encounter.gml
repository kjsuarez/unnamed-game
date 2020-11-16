function enter_encounter(opponent_object, win_case, lose_case){
	room_instance_add(base_encounter_room, global.opponent_coor[0], global.opponent_coor[1], opponent_object);
	room_instance_add(base_encounter_room, 128, 704, player_obj);
	global.current_win_event = win_case;
	global.current_lose_event = lose_case;
	room_instance_add(base_encounter_room, 0, 0, encounter_state_obj);

	room_goto(base_encounter_room);
}