/// @description Insert description here
draw_self();
draw_set_colour(c_white);
draw_text_ext(x - 200, y - 200, event_text, 15, 300);

if(variable_instance_exists(self, "response")){
	draw_text_ext(x - 200, y - 50, response, 15, 300);
}