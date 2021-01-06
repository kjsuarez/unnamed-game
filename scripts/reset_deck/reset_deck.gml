// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_deck(){
//pull existing deck metadata
	var starter_deck_file_name = "initial_deck.json";
	var deck_file_name = "deck.json";
	if(file_exists(starter_deck_file_name)){
		var deck_hash = load_json(starter_deck_file_name);
		
		// save updated map to json file
		var deck_string = json_encode(deck_hash);
		save_json_to_file(deck_file_name, deck_string);
		ds_map_destroy(deck_hash);
	}
	else{
		show_error("Missing starter deck JSON", true);
	}
}