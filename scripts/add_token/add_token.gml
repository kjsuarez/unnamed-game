var card_inst = argument0;
var script_params = argument1;

opponent_obj.logos_health = opponent_obj.logos_health + card_inst.damage;
show_debug_message("points: " + string(opponent_obj.logos_health));

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