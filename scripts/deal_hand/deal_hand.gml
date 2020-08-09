card_counter = 0;
repeat(hand_obj.hand_size){
	card_x = hand_obj.initial_card_location[0] + (hand_obj.x_offset * card_counter);
	card_y = hand_obj.initial_card_location[1];
	deal_new_card(card_x, card_y, card_counter);
	card_counter += 1;
}