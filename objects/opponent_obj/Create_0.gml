/// @description Insert description here
logos_health = 0;
ethos_health = 0;
pathos_health = 0;
flirt_health = 0;
friend_health = 0;
agro_health = 0;

multplier_x = 992;
multplier_y = 448;

statuses = ds_list_create();
xxx_status_inst = instance_create_depth(900, 400, -10, status_obj);
with(xxx_status_inst){
	image_xscale = 2;
	image_yscale = 2;
	face_text =  "doubt: " + string(id);
	token_script_params = ds_map_create();
	status_script = "experience_doubt";
	activation_step = "start";
	script_params = ds_map_create();
}

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


ds_list_add(statuses, xxx_status_inst);
ds_list_add(statuses, yyy_status_inst);

my_turn = false;
thinking = 0;
status_thinking = 0;