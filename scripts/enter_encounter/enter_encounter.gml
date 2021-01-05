function enter_encounter(opponent_object, win_case, lose_case){
	
	var base_encounter_copy = room_add();
	room_assign(base_encounter_copy, base_encounter_room);
	
	//*
	room_instance_clear(base_encounter_copy);
	
	room_instance_add(base_encounter_copy, 0, 0, deck_obj);
	room_instance_add(base_encounter_copy, 0, 0, token_set_obj);
	room_instance_add(base_encounter_copy, 0, 0, dialog_state_obj);
	room_instance_add(base_encounter_copy, 736, 480, text_box_obj);
	room_instance_add(base_encounter_copy, 1344, 896, button_obj);
	//*/
	
	room_instance_add(base_encounter_copy, global.opponent_coor[0], global.opponent_coor[1], opponent_object);
	room_instance_add(base_encounter_copy, 128, 704, player_obj);
	global.current_win_event = win_case;
	global.current_lose_event = lose_case;
	room_instance_add(base_encounter_copy, 0, 0, encounter_state_obj);

	room_goto(base_encounter_copy);
}