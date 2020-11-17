/// @description Insert description here
draw_self();
draw_set_colour(c_white);
draw_text_ext(x - 200, y - 200, event_text, 15, 300);

draw_text_ext(20, 20, "step: " + string(global.game_state_step), 15, 300);
draw_text_ext(20, 40, "day: " + string(global.game_state_day), 15, 300);
draw_text_ext(20, 60, "current context: " + string(global.game_state_context), 15, 300);

if(variable_instance_exists(self, "response")){
	draw_text_ext(x - 200, y - 50, response, 15, 300);
}