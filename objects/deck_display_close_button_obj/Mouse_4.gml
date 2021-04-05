/// @description Insert description here
show_debug_message("closing deck display instance")
instance_destroy(card_display_obj);
instance_destroy(deck_display_obj);
instance_destroy(self);
deck_button_obj.open = false;