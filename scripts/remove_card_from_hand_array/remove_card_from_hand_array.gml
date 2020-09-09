// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remove_card_from_hand_array(card_inst){
	// find this card in hand array and remove it
	for(i=0; i < ds_list_size(hand_obj.hand); i++;){
		show_debug_message("$$$looking for the card you just clicked$$$");
		if(hand_obj.hand[| i] == card_inst.id){
			show_debug_message("$$$removing card you clicked (" + string(card_inst.id) + ") from hand array$$$");
			ds_list_delete(hand_obj.hand, i);
		}
	}
}