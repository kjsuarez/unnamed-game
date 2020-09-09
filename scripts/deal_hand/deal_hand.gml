function deal_hand() {
	/**
	card_counter = 0;
	repeat(hand_obj.hand_size){
		card_x = hand_obj.initial_card_location[0] + (hand_obj.x_offset * card_counter);
		card_y = hand_obj.initial_card_location[1];
		deal_new_card(card_x, card_y, card_counter);
		card_counter += 1;
	}
	**/
	
	clean_hand_array();
	
	var number_of_cards_to_draw = hand_obj.hand_size;
	
	if(ds_list_size(hand_obj.hand) + hand_obj.hand_size > ds_list_size(deck_obj.deck_array)){
		shuffle_discard_in();
		if(ds_list_size(hand_obj.hand) + hand_obj.hand_size > ds_list_size(deck_obj.deck_array)){
			number_of_cards_to_draw = ds_list_size(deck_obj.deck_array);
		}
	}
	
	for (var i = 0; i < number_of_cards_to_draw; ++i;){
		card_x = hand_obj.initial_card_location[0] + (hand_obj.x_offset * (ds_list_size(hand_obj.hand)));
		card_y = hand_obj.initial_card_location[1];
		deal_new_card(card_x, card_y, 10);
    }
}
