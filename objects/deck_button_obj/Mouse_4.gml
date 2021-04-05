/// @description open deck display
if(open){
	open = false;
	show_debug_message("closing deck display instance")
	instance_destroy(card_display_obj);
	instance_destroy(deck_display_obj);
} else {
	show_debug_message("Creating deck display instance")
	open = true;
	var deck_display = instance_create_depth(room_width/2, room_height/2, 1, deck_display_obj);
}
