/// @description Insert description here
var top_left_x = x - (abs(sprite_width)/2) - 2;
var top_left_y = y - (abs(sprite_height)/2) - 2;

var bottom_right_x = x + (abs(sprite_width)/2) + 2;
var bottom_right_y = y + (abs(sprite_height)/2) + 2;

draw_set_colour(c_white);
draw_rectangle(top_left_x, top_left_y, bottom_right_x, bottom_right_y, false);

draw_self();

draw_set_colour(c_white);

if(flag_dependent){
	draw_set_colour(c_blue);
}
if(!legal){
	draw_set_colour(c_red);
}

var box_width = abs(sprite_width) - 25;
top_left_coor = top_left_of_instance(self);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(!selected){
	//draw_text_ext(top_left_coor[0] + 20, top_left_coor[1], display_text, 20, box_width);
	draw_text_ext(x, y, display_text, 20, box_width);
}else{
	//draw_text_ext(top_left_coor[0] + 20, top_left_coor[1], "next-", 20, box_width);
	draw_text_ext(x, y, "next-", 20, box_width);
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);

