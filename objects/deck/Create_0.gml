/// @description Insert description here
var file_path = "all_cards.json";
if(file_exists(file_path)){
	var card_hash = load_json(file_path);
	
	var all_cards_array = card_hash[? "cards"];
	
	for(var i = 0; i < ds_list_size(all_cards_array); i++;){
		var card_hash = all_cards_array[| i];
		var cost = card_hash[? "cost"];
		show_debug_message("cost: " + string(cost))
	}
}