/// @description Insert description here
draw_self();
draw_set_colour(c_black);

writable_x = x - abs(sprite_width/2) + 20;
var bottom_left = [ writable_x, y + abs(sprite_height/2) - 35 ];

draw_text(bottom_left[0], bottom_left[1], string(page_number + 1) + "/" + string(total_number_of_pages));
