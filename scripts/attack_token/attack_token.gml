// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_token(aggressor, token_inst, damage){
	var take_damage_script_name = token_inst.token_script_params[? "take_damage_script"];
	if(!is_undefined(take_damage_script_name)){
		set_phase_to_resolve_attack_from(aggressor);
		script_execute(scriptToCall, token_inst, token_inst.token_script_params, damage)
	}else{
		cleanup_token(token_inst);
	}
}