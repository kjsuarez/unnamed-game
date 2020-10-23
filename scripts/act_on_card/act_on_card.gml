function act_on_card(card_inst){
	//show_debug_message("RP: " + string(player_obj.retorical_points));
	hand_obj.card_in_action = true;
	// do script
	var scriptToCall = asset_get_index(card_inst.script_name);
	var metadata = script_execute(scriptToCall, card_inst, card_inst.script_params);
}