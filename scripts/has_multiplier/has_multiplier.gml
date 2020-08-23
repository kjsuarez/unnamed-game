// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function has_multiplier(combatant){
	var owners_modifiers = mod_tokens_for(combatant);
	var mod_count = ds_list_size(owners_modifiers);
	return mod_count > 0;
}