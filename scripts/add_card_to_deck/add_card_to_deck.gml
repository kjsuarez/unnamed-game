function add_card_to_deck(metadata){
	//pull existing deck metadata
	var deck_file_path = "deck.json";
	if(file_exists(deck_file_path)){
		var deck_hash = load_json(deck_file_path);
		//var deck_cards_array = deck_hash[? "cards"];
		
		// add new metadata to map
		ds_list_add(deck_hash[? "cards"], metadata);
		ds_list_mark_as_map(deck_hash[? "cards"], ds_list_size(deck_hash[? "cards"])-1);
		
		// save updated map to json file
		var deck_string = json_encode(deck_hash);
		save_json_to_file(deck_file_path, deck_string);
		ds_map_destroy(deck_hash);
	}
	else{
		show_error("Missing all_cards JSON", true);
	}

}