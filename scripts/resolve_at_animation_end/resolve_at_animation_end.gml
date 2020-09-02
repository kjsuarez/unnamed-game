// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resolve_at_animation_end(attack, script_params){
	return attack.image_index > attack.image_number - 1;
}