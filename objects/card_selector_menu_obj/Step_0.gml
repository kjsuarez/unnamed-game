/// @description add cards to menu until drop size achieved

if(ds_list_size(hand) < hand_size){
	if(counter >= frames_before_card_drop){
		counter = 0;
	
		card_x = initial_card_location[0] + (x_offset * (ds_list_size(hand)));
		card_y = initial_card_location[1];
		deal_card_selector(card_x, card_y, 10);		
	} else {
		counter += 1;
	}
}

