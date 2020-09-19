function logos_heal(token_inst, token_params){
	amount_healed = token_params[? "power"];
	if(token_inst.owner.logos_health - amount_healed < 0){
		token_inst.owner.logos_health = 0;
	}else{
		token_inst.owner.logos_health = token_inst.owner.logos_health - amount_healed;
	}
	token_inst.animation_status = "finished";
}