/// @description Insert description here


if(global.turn == "player"){
	if(is_string(win_condition_met())){
		room_restart();
	}
	player_obj.retorical_points = 3
	for (var i = 0; i < instance_number(card_obj); ++i;){
		card_inst = instance_find(card_obj,i);
		card_json = card_to_json(card_inst);
		ds_list_insert(deck_obj.discard, 0, card_json);
    }
	instance_destroy(card_obj);
	global.turn = "enemy";
}

