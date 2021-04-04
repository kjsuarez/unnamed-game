function pop_or_fizzle(token_inst, token_params){
	
	if(variable_instance_exists(token_inst, "damage")){
		damage_amount = token_inst.damage;
		
		opposite_of_combatant(token_inst.owner).flirt_health = token_inst.owner.flirt_health + damage_amount;
	}
	cleanup_token(token_inst);
}