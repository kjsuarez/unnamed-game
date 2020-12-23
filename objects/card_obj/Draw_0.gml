/// @description Insert description here
draw_self();
draw_set_colour(c_black);

writable_x = x - abs(sprite_width/2) + 20;
var top_left = [ writable_x, y - abs(sprite_height/2) + 15 ];

draw_text(top_left[0], top_left[1], cost);
draw_text_ext(writable_x, y, details, 20, sprite_width - 20);
draw_text(x, y + 45, id);