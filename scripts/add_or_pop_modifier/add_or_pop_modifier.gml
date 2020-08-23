// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_or_pop_modifier(card_inst, script_params){
	var mod_owner_str = script_params[? "owner"]
	
	var owners_modifiers = mod_tokens_for(mod_owner_str);
	var mod_count = ds_list_size(owners_modifiers);
	if(mod_count == 0){

		add_multiplier(mod_owner_str, 2);
		card_cleanup(card_inst)
	}
	else{
		//used for a build modifier card
		//mod_inst.modifier = mod_inst.modifier * 2
		//mod_inst.face_text = "x" + string(mod_inst.modifier);
		card_cleanup(card_inst)
		mod_inst = owners_modifiers[| 0];
		player_obj.temp_modifier = mod_inst.modifier;
		instance_destroy(mod_inst);
	}
	
}