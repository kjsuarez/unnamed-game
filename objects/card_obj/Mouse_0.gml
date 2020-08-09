/// @description Insert description here
if(global.turn == "player"){
	if(player_obj.retorical_points >= cost){
		player_obj.retorical_points = player_obj.retorical_points - cost
		show_debug_message("RP: " + string(player_obj.retorical_points));
		opponent_obj.logos = opponent_obj.logos + damage;
		show_debug_message("points: " + string(opponent_obj.logos));
		instance_destroy();
	}
}
