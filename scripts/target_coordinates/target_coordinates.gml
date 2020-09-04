// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function target_coordinates(target){
	var number_of_tokens =  ds_list_size(target.tokens)
	
	if(number_of_tokens > 0){
		
		return [target.tokens[| number_of_tokens - 1].x, target.tokens[| number_of_tokens - 1].y];
	}else{
		return [target.x, target.y];
	}
}