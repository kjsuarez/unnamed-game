function set_card_target(target){
	for (var i = 0; i < ds_list_size(hand_obj.hand); ++i;){	
		card_inst = hand_obj.hand[| i];
		if(card_inst.selecting_target == true){
			show_debug_message("ABOUT TO SET CARD TARGET " + string(card_inst) + ", TARGET: " + target);
			card_inst.target = target;
			card_inst.selecting_target = false;
			player_obj.selecting_target = false;
			handle_card(card_inst);
		}
    }
}