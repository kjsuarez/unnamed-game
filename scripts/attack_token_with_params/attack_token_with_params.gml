// meant to be invoked from the context of an animator, hence animator_params
function attack_token_with_params(aggressor, token_inst, damage, animator_params){
	/* if this token responds to taking damage, 
		spin up a new animator to handle that event
		make this animator a child of the parent referenced in animator_params
	*/
	var take_damage_script_name = token_inst.token_script_params[? "take_damage_script"];
	if(!is_undefined(take_damage_script_name)){
		
		take_damage_script = asset_get_index(take_damage_script_name);
		script_execute(take_damage_script, token_inst, token_inst.token_script_params, damage, animator_params)
	}else{
		cleanup_token(token_inst);
	}
}