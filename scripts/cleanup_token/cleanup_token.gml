// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cleanup_token(token_inst){	
	remove_from_token_list(token_inst.owner, token_inst);
	instance_destroy(token_inst);
	arrange_tokens(token_inst.owner);
}