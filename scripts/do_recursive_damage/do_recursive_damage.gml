function do_recursive_damage(card_inst, xxx_params) {
	var counter = xxx_params[? "hits"];
	
	//add temp modifier
	do_cards_damage_no_cleanup(card_inst, xxx_params);
	
	if(counter > 1){
		counter -= 1;
		xxx_params[? "hits"] = counter;
		
		multi_hit_attack(card_inst, xxx_params);
		
	}else{
		card_cleanup(card_inst);
	}
	
}


