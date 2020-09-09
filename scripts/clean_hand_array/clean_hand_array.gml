// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clean_hand_array(){
	for (var i = 0; i < ds_list_size(hand_obj.hand); ++i;){	
		if(is_undefined(hand_obj.hand[| i]) || !instance_exists(hand_obj.hand[| i])){
			show_debug_message("found a bad array element!: " + string(hand_obj.hand[| i]))
			ds_list_delete(hand_obj.hand, i);
		}else{
			show_debug_message("found a good(?) array element: " + string(hand_obj.hand[| i].id))
		}
    }
}