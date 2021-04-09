/// @description Insert description here

var display_logos = owner.logos_health;
var display_ethos = owner.ethos_health;
var display_pathos = owner.pathos_health;
var display_flirt = owner.flirt_health;
var display_friend = owner.friend_health;
var display_agro = owner.agro_health;

var health_values = [
	[display_logos, c_blue],
	[display_ethos, c_teal],
	[display_pathos, c_green], 
	[display_flirt, c_fuchsia],
	[display_friend, c_yellow], 
	[display_agro, c_red]
]
total_value = 0;
for(var i = 0; i < array_length(health_values); i++;){
	if(total_value + health_values[i][0] > max_hp){
		health_values[i][0] = health_values[i][0] - ((total_value + health_values[i][0]) - max_hp)
	}
	if(total_value > max_hp){
		health_values[i][0] = 0;
	} else {
		total_value += health_values[i][0];
	}
}

var initial_top_left_x = x 
var uniform_top_y = y - (abs(sprite_height)/2);
var uniform_bottom_y = y + (abs(sprite_height)/2) - 2;

var current_starting_x = initial_top_left_x;
var bar_positions = ds_list_create();

for(var i = 0; i < array_length(health_values); i++;){
	var current_value = health_values[i][0];
	var current_color = health_values[i][1];
	if(current_value > 0){
		var position_hash = ds_map_create();
		position_hash[? "top_left_x"] = current_starting_x;
		position_hash[? "top_left_y"] = uniform_top_y;
		position_hash[? "bottom_right_x"] = current_starting_x + (current_value * hp_increment);
		position_hash[? "bottom_right_y"] = uniform_bottom_y;
		position_hash[? "color"] = current_color;
		
		current_starting_x = position_hash[? "bottom_right_x"];
		
		ds_list_add(bar_positions, position_hash);
	}
}

for(var i = 0; i < ds_list_size(bar_positions); i++;){
	var current_bar = bar_positions[| i];
	
	draw_set_colour(current_bar[? "color"]);
	draw_rectangle(
		current_bar[? "top_left_x"], 
		current_bar[? "top_left_y"], 
		current_bar[? "bottom_right_x"], 
		current_bar[? "bottom_right_y"], 
		false
	);
}
/*
if(red_hp > 0){
	
	var first_bottom_right_x = x - 1 + (red_hp * hp_increment);
	
	draw_set_colour(c_red);
	draw_rectangle(initial_top_left_x, initial_top_left_y, first_bottom_right_x, uniform_bottom_y, false);
} else {
	var first_bottom_right_x = initial_top_left_x;
}

if(blue_hp > 0){
	 
	var second_bottom_right_x = first_bottom_right_x + (blue_hp * hp_increment);
	
	draw_set_colour(c_blue);
	draw_rectangle(first_bottom_right_x, initial_top_left_y, second_bottom_right_x, uniform_bottom_y, false);
} else {
	second_bottom_right_x = first_bottom_right_x;
}

if(green_hp > 0){
	var third_bottom_right_x = second_bottom_right_x + (green_hp * hp_increment);
	
	draw_set_colour(c_green);
	draw_rectangle(second_bottom_right_x, initial_top_left_y, third_bottom_right_x, uniform_bottom_y, false);
}
*/

draw_self();
