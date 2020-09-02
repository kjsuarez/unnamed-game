// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function card_cleanup(card_inst){
	// Eventually everything below here should be abstracted out

	//pull out card metadata
	var scriptToCall = asset_get_index("card_to_json");
	var metadata = script_execute(scriptToCall, card_inst)

	//insert metadata into discard array
	ds_list_insert(deck_obj.discard, 0, metadata);

	//cleanup (for now I think it makes sense for each card script 
	//to handle it's own cleanup for 'retain' purposes)
	player_obj.temp_modifier = 1;
	instance_destroy(card_inst);
	hand_obj.card_in_action = false;
	if(is_string(win_condition_met())){
		room_restart();
	}
}