// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_tokens_with(combatent, script_param){
	tokens_to_return = ds_list_create();
	for(i=0; i<ds_list_size(combatent.tokens); i+=1;){
		current_token = combatent.tokens[| i];
		if(!is_undefined(current_token.token_script_params[? script_param])){
			ds_list_add(tokens_to_return, current_token)
		}
	}
	return tokens_to_return;
}