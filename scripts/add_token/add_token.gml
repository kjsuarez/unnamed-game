var card_inst = argument0;
var script_params = argument1;

inst_x = token_set_obj.initial_token_location[0];
inst_y = token_set_obj.initial_token_location[1] + (token_set_obj.y_offset * token_set_obj.token_counter);;
inst_z = 0;
//deal_new_card(card_x, card_y, card_counter);
		
var token_inst;
token_inst = instance_create_depth(inst_x, inst_y, inst_z, token_obj);
with(token_inst){
	image_xscale = token_set_obj.token_scale;
	image_yscale = token_set_obj.token_scale;
	face_text = "test";
	token_script_params = script_params;
}

token_set_obj.token_counter += 1;


// Eventually everything below here should be abstracted out

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