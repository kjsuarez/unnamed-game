/// @description Insert description here


if(global.turn == "player"){
	if(opponent_obj.logos == 5){
		room_restart();
	}
	player_obj.retorical_points = 3
	instance_destroy(card_obj);
	global.turn = "enemy";
}

