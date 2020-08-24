// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tokens_for(owner){
	var owners_tokens = ds_list_create();
	
	for (var i = 0; i < instance_number(token_obj); ++i;){
		token_inst = instance_find(token_obj,i);
		if(token_inst.owner == owner){
			ds_list_add(owners_tokens, token_inst);
		}
    }
	return owners_tokens
}