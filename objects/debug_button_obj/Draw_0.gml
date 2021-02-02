/// @description Insert description here
draw_self();
draw_set_colour(c_black);

var bubble_width = abs(sprite_width) - 25;

draw_text_ext(x - abs(sprite_width/2) + 20, y - abs(sprite_height/2), "Next stop: " + next_event_id, 20, bubble_width);