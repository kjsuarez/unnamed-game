/// @description Insert description here
var file_path = "deck.json";
if(file_exists(file_path)){
	var card_hash = load_json(file_path);
	
	var all_cards_array = card_hash[? "cards"];
	deck_array = all_cards_array;
	discard = ds_list_create();
	
	for(var i = 0; i < ds_list_size(all_cards_array); i++;){
		var card_hash = all_cards_array[| i];
		var cost = card_hash[? "cost"];
		//show_debug_message("cost: " + string(cost))
	}
	var hand_inst;
		hand_inst = instance_create_depth(0, 0,0, hand_obj);
}
else{
	show_error("Missing all_cards JSON", true);
}