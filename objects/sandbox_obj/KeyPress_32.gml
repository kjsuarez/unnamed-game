/// @description Insert description here

var wrapper_hash = ds_map_create();
var card_list = ds_list_create();

for(i=0; i<5; i++;){
	var card_metadata = ds_map_create();
	card_metadata[? "name"] = "poop " + string(i);
	ds_list_add(card_list, card_metadata);
	ds_list_mark_as_map(card_list, i);
}

ds_map_add_list(wrapper_hash, "cards", card_list);
var matedata_string = json_encode(wrapper_hash);

save_json_to_file(file_name, matedata_string);
show_debug_message("supposedly saved file to " + game_save_id);