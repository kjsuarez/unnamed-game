/// @description Insert description here
draw_self();

draw_set_colour(c_white);

if(flag_dependent){
	draw_set_colour(c_blue);
}
if(!legal){
	draw_set_colour(c_red);
}

if(!selected){
	draw_text_ext(x, y, display_text, 20, 300);
}else{
	draw_text_ext(x, y, "next-", 20, 300);
}


