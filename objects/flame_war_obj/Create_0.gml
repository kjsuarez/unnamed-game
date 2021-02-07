/// @description Insert description here

// Inherit the parent event
event_inherited();

// set background

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, flame_war_background_spr);
layer_background_stretch(back_id, true);


standard_sprite = asset_get_index("nerd_standin_spr");
attacked_sprite = asset_get_index("nerd_standin_angry_spr");

behavior_script = "flame_war_choose_behavior";
speech_behavior_script = "flame_war_speech_behavior";
act_behavior_script = "flame_war_act_on_behavior";
question_behavior_script = "flame_war_act_on_question";
//intro_script = asset_get_index("flame_war_intro_script");

// intro script
var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "How dare you post a Lucky Charms® meme on this dedicated Captain Crunch® forum!";
x1[? "sprite"] = nerd_standin_angry_spr;
var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "Your opinios don't matter today and they have never ever mattered.";	
intro_script = ds_list_create();
ds_list_add(intro_script, x1, x2);

// victory script
var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "this may be the first time I've ever actually won an argument";
x1[? "sprite"] = nerd_standin_angry_spr;
var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "... fuck.";	
victory_script = ds_list_create();
ds_list_add(victory_script, x1, x2);

// loss script
var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "...";
x1[? "sprite"] = nerd_standin_shocked_spr;
var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "Die mad about it you stain.";	
defeat_script = ds_list_create();
ds_list_add(defeat_script, x1, x2);


/*

var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "How dare you post a Lucky Charms® meme on this dedicated Captain Crunch® forum!";
var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "Your opinios don't matter today and they have never ever mattered.";
	
var intro_script = ds_list_create();
ds_list_add(intro_script, x1, x2);
*/

//

opponent_name = "MILF Whisperer";

logos_stat = 0.8;
ethos_stat = 1.0;
pathos_stat = 1.0;
flirt_stat = 1.3;
friend_stat = 1.0;
agro_stat = 1.0;

image_xscale = 5;
image_yscale = 5;



// statuses
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