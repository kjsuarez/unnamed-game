/// @draw a page of cards from deck json
image_xscale = 10;
image_yscale = 10;


counter = 0;

page_number = 0;
page_index = 0
page_size = 12;
row_size = 4;

card_scale = 7;
initial_card_location = [room_width/3, room_height/5];
var card_length = 150;
var card_height = sprite_get_height(card) * card_scale;
x_offset = card_length + 10;
y_offset = card_height + 10;
display_page = ds_list_create();

var deck_path = "deck.json";
if(file_exists(deck_path)){
	var card_hash = load_json(deck_path);
	var var_cards_not_in_hand_or_discard = card_hash[? "cards"];
	cards_not_in_hand_or_discard = var_cards_not_in_hand_or_discard;
	ds_list_shuffle(cards_not_in_hand_or_discard);
}
else{
	show_error("Missing all_cards JSON", true);
}
var size_of_actual_deck_obj = ds_list_size(deck_obj.deck_array);
var number_of_cards_not_in_hand_or_discard = ds_list_size(cards_not_in_hand_or_discard);

total_number_of_pages = ceil(number_of_cards_not_in_hand_or_discard / page_size);

/*
I have a deck of cards
I have a number of cards I intend to view at any one time (page_size)
I have a page_number and a page_index
On key press,
	I draw cards from deck at index ((page_number * page_size) + page_index) of deck
	I increment page_index
	I continue as long as my deck index is < deck_size && page_index < page_size

*/


var deck_index = ((page_number * page_size) + page_index)
while(deck_index < number_of_cards_not_in_hand_or_discard - 1 && ds_list_size(display_page) < page_size) {
	var initial_x = initial_card_location[0];
	var initial_y = initial_card_location[1];
	var current_display_page_size = ds_list_size(display_page)
	card_x = initial_x + (x_offset * (current_display_page_size mod row_size));
	card_y = initial_y + (y_offset * (current_display_page_size div row_size));
	
	deal_card_display_from(deck_index, cards_not_in_hand_or_discard, card_x, card_y, -100);
	page_index += 1;
	deck_index = ((page_number * page_size) + page_index);
}

