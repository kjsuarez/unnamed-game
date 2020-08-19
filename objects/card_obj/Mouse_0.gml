/// @description Insert description here
if(global.turn == "player"){
	if(player_obj.retorical_points >= cost){
		player_obj.retorical_points = player_obj.retorical_points - cost
		show_debug_message("RP: " + string(player_obj.retorical_points));
		// do script
		var scriptToCall = asset_get_index(script_name);
		var metadata = script_execute(scriptToCall, self, script_params)
	}
}
