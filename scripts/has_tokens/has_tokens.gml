// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function has_tokens(combatant){
	var owners_tokens = tokens_for(combatant);
	var token_count = ds_list_size(owners_tokens);
	return token_count > 0;
}