/// @description Insert description here
action_status = "animating";
animation_status = "ready";
animation_script = false;
action_script = false;
script_params = ds_map_create();
script_params[? "params_owner"] = self;
total_animation_steps = 0;
animation_counter = 0;
children = ds_list_create();
parent = false;

has_sprite = true;


show_debug_message("creadted animator "+ string(id));