function animate_slash(card_inst, script_params){
	if(card_inst.sprite_index != card_slash){
		card_inst.sprite_index = card_slash;
		return false;
	}else{
		return card_inst.image_index > card_inst.image_number - 1;
	}
}