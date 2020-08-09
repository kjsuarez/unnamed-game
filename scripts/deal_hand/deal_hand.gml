card_counter = 0;
repeat(hand.hand_size){
	card_x = hand.initial_card_location[0] + (hand.x_offset * card_counter);
	card_y = hand.initial_card_location[1];
	deal_new_card(card_x, card_y, card_counter);
	card_counter += 1;
}