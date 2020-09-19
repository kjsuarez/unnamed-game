// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remove_from_token_list(combatent, token_inst){
	var player_tokens = combatent.tokens;
	var token_count = ds_list_size(player_tokens);
	for(i=0; i<token_count; i +=1;){
		if(player_tokens[| i] == token_inst){
			ds_list_delete(player_tokens, i);
		}
	}
}