// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mod_tokens_for(owner){
	var owners_counters = ds_list_create();
	
	for (var i = 0; i < instance_number(multiplier_token_obj); ++i;){
		counter = instance_find(multiplier_token_obj,i);
		if(counter.owner == owner){
			ds_list_add(owners_counters, counter);
		}
    }
	return owners_counters
}