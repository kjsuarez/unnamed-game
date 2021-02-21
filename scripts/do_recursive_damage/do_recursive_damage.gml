function do_recursive_damage(card_inst, xxx_params) {
	var total = xxx_params[? "hits"];
	var counter = xxx_params[? "counter"];
	
	//add temp modifier
	do_cards_damage_no_cleanup(card_inst, xxx_params);
	
	if(counter < total - 1){
		counter += 1;
		xxx_params[? "counter"] = counter;
		
		multi_hit_attack(card_inst, xxx_params);
		
	}else{
		card_cleanup(card_inst);
	}
	
}


