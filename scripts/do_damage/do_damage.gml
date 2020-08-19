function do_damage(argument0, argument1) {
	var card_inst = argument0;
	var script_params = argument1;

	switch (card_inst.type){
	    case "logos":
	        opponent_obj.logos_health = opponent_obj.logos_health + card_inst.damage;
	        break;
	    case "ethos":
	        opponent_obj.ethos_health = opponent_obj.ethos_health + card_inst.damage;
	        break;
	    case "pathos":
	        opponent_obj.pathos_health = opponent_obj.pathos_health + card_inst.damage;
	        break;
	    case "flirt":
	        opponent_obj.flirt_health = opponent_obj.flirt_health + card_inst.damage;
	        break;
	    case "friend":
	        opponent_obj.friend_health = opponent_obj.friend_health + card_inst.damage;
	        break;
	    case "aggro":
	        opponent_obj.agro_health = opponent_obj.agro_health + card_inst.damage;
	        break;
	}




	//pull out card metadata
	var scriptToCall = asset_get_index("card_to_json");
	var metadata = script_execute(scriptToCall, card_inst)
	//insert metadata into discard array
	ds_list_insert(deck_obj.discard, 0, metadata);
	//cleanup (for now I think it makes sense for each card script 
	//to handle it's own cleanup for 'retain' purposes)
	instance_destroy(card_inst);
	if(is_string(win_condition_met())){
		room_restart();
	}


}
