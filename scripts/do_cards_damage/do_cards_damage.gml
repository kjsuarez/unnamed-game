function do_cards_damage(card_inst, script_params) {

	do_cards_damage_no_cleanup(card_inst, script_params);
	card_cleanup(card_inst);
}
