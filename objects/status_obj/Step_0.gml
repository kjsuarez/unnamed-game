/// @description Insert description here

//show_debug_message(string(image_index) + "vs" + string(sprite_get_number(sprite_index) -1));


if(image_index > image_number - 1 && sprite_index == shine_status){
	
	show_debug_message("Status animation complete");
	animation_status = "execute";
	current_step = 0;
	sprite_index = status;
}