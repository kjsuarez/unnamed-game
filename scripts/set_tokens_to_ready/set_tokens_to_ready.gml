// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_tokens_to_ready(combatent){
	for(i=0; i<ds_list_size(combatent.tokens); i+=1;){
		current_token = combatent.tokens[| i];
		current_token.animation_status = "ready";
	}
}