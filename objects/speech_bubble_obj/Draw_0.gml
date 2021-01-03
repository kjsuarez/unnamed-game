/// @description Insert description here
draw_self();
draw_set_colour(c_black);
var bubble_width = abs(sprite_width) - 25;

draw_text_ext(x - abs(sprite_width/2) + 20, y - abs(sprite_height/2), text_body, 20, bubble_width);
//draw_text_ext(x - 160, y - 40, text_body, 20, sprite_width - 10);