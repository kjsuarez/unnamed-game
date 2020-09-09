/// @description Insert description here
logos_health = 0;
ethos_health = 0;
pathos_health = 0;
flirt_health = 0;
friend_health = 0;
agro_health = 0;

multplier_x = 992;
multplier_y = 448;

initial_token_location = [600, 300];
initial_status_location = [x - 60, y + 275];
y_offset = 60;

tokens = ds_list_create();
statuses = ds_list_create();
temp_modifier = 1;

temp_status_inst = instance_create_depth(initial_status_location[0], initial_status_location[1], -10, status_obj);
with(temp_status_inst){
	image_xscale = 2;
	image_yscale = 2;
	face_text =  "doubt: " + string(id);
	token_script_params = ds_map_create();
	status_script = "experience_doubt";
	activation_step = "start";
	script_params = ds_map_create();
}
/**
yyy_status_inst = instance_create_depth(900, 460, -10, status_obj);
with(yyy_status_inst){
	image_xscale = 2;
	image_yscale = 2;
	face_text =  "doubt again: " + string(id);
	token_script_params = ds_map_create();
	status_script = "experience_doubt";
	activation_step = "start";
	script_params = ds_map_create();
}
**/

ds_list_add(statuses, temp_status_inst);
//ds_list_add(statuses, yyy_status_inst);

my_turn = false;
thinking = 0;
status_thinking = 0;