/// @description Insert description here
counter = 0;
frames_before_card_drop = 10;

hand_size = 3;
initial_card_location = [room_width/3, y];
var card_length = 150;
x_offset = card_length + 50;
card_scale = 7;
hand = ds_list_create();

var deck_path = "deck.json";
var all_cards_path = "all_cards.json";
if(file_exists(all_cards_path)){
	var card_hash = load_json(all_cards_path);
	var var_all_cards_array = card_hash[? "cards"];
	all_cards_array = var_all_cards_array;
}
else{
	show_error("Missing all_cards JSON", true);
}