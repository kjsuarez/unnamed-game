// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remove_card_from_hand(card_inst){
	//show_debug_message("instance I'm about to destroy: " + string(card_inst.id));
	remove_card_from_hand_array(card_inst);
	instance_destroy(card_inst);
}