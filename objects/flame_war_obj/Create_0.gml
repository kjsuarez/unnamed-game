/// @description Insert description here

// Inherit the parent event

event_inherited();

standard_sprite = asset_get_index("nerd_standin_spr");

behavior_script = "flame_war_choose_behavior";
speech_behavior_script = "flame_war_speech_behavior";
act_behavior_script = "flame_war_act_on_behavior";
question_behavior_script = "flame_war_act_on_question";
//intro_script = asset_get_index("flame_war_intro_script");

//
var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "This is just a test, do not be alarmed";
x1[? "sprite"] = nerd_standin_angry_spr;
var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "rest assured, this is also a test";
	
intro_script = ds_list_create();
ds_list_add(intro_script, x1, x2);

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