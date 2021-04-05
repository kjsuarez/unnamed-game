function do_card_damage_and_heal(card_inst, script_params) {

	do_cards_damage_no_cleanup(card_inst, script_params);
	
	player_attempt_direct_heal(card_inst, script_params);
	
	card_cleanup(card_inst);
}