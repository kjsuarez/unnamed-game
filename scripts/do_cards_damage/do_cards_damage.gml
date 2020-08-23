function do_cards_damage(card_inst, script_params) {
	
	var total_damage = player_damage_for(card_inst);

	switch (card_inst.type){
	    case "logos":
	        opponent_obj.logos_health = opponent_obj.logos_health + total_damage;
	        break;
	    case "ethos":
	        opponent_obj.ethos_health = opponent_obj.ethos_health + total_damage;
	        break;
	    case "pathos":
	        opponent_obj.pathos_health = opponent_obj.pathos_health + total_damage;
	        break;
	    case "flirt":
	        opponent_obj.flirt_health = opponent_obj.flirt_health + total_damage;
	        break;
	    case "friend":
	        opponent_obj.friend_health = opponent_obj.friend_health + total_damage;
	        break;
	    case "aggro":
	        opponent_obj.agro_health = opponent_obj.agro_health + total_damage;
	        break;
	}

	card_cleanup(card_inst);
}
