// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function target_coordinates(target, desired_target){
	var number_of_tokens =  ds_list_size(target.tokens)
	var token_inst = target.tokens[| number_of_tokens - 1];
	
	if(number_of_tokens > 0 && desired_target == "stack"){
		return [target.tokens[| number_of_tokens - 1].x, target.tokens[| number_of_tokens - 1].y];
	}
	
	if(number_of_tokens > 0 && token_inst.defender == true){
		
		return [target.tokens[| number_of_tokens - 1].x, target.tokens[| number_of_tokens - 1].y];
	}else{
		return [target.x, target.y];
	}
}