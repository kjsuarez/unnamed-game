/// @description Insert description here
if(global.turn == "player"){
	if(player_obj.retorical_points >= cost){
		player_obj.retorical_points = player_obj.retorical_points - cost
		show_debug_message("RP: " + string(player_obj.retorical_points));
		opponent_obj.logos = opponent_obj.logos + damage;
		show_debug_message("points: " + string(opponent_obj.logos));
		//var metadata = card_to_json(self);
		var scriptToCall = asset_get_index("card_to_json");
		var metadata = script_execute(scriptToCall, self)
		ds_list_insert(deck_obj.discard, 0, metadata);
		instance_destroy();
	}
}
