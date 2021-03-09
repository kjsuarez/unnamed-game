/// @description previous page

if(page_number > 0){
	instance_destroy(card_display_obj);
	ds_list_clear(deck_display_obj.display_page);
	page_number -= 1;
	//draw_card_display_page(page_number);
	
	var number_of_cards_not_in_hand_or_discard = ds_list_size(cards_not_in_hand_or_discard);
	page_index = 0;
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
}
