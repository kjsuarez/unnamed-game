/// @description Insert description here

// Inherit the parent event
event_inherited();

// set background

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, blue_screen_background_spr);
layer_background_stretch(back_id, true);


standard_sprite = asset_get_index("hacker_standin_beginning_spr");

behavior_script = "flame_war_choose_behavior";
speech_behavior_script = "flame_war_speech_behavior";
act_behavior_script = "flame_war_act_on_behavior";
question_behavior_script = "flame_war_act_on_question";
//intro_script = asset_get_index("flame_war_intro_script");

// intro script
var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "Hey so, you've been hacked.";
//x1[? "sprite"] = hacker_standin_beginning_spr;
var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "Aw man c'mon dude not cool!";
var x3 = ds_map_create();
x3[? "speaker"] = opponent_obj;
x3[? "line"] = "I need 3 grand in bitcoin in the next 7 turns or your computer becomes a paperweight.";
var x4 = ds_map_create();
x4[? "speaker"] = player_obj;
x4[? "line"] = "Joke's on you my guy, I literally have no money. Like that's not even a mechanic in this game.";
var x5 = ds_map_create();
x5[? "speaker"] = opponent_obj;
x5[? "line"] = "I'm not here for meta bullshit pal. Cash only.";
intro_script = ds_list_create();
ds_list_add(intro_script, x1, x2, x3, x4, x5);

// victory script
var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "Time's up chumbus.";
//x1[? "sprite"] = hacker_standin_beginning_spr;
var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "... fuck.";	
victory_script = ds_list_create();
ds_list_add(victory_script, x1, x2);

// loss script
var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "Jesus christ. FINE.";
//x1[? "sprite"] = hacker_standin_beginning_spr;
var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "Oh thank god.";
var x3 = ds_map_create();
x3[? "speaker"] = opponent_obj;
x3[? "line"] = "I won't brick your machine, on the condition that you pay the one currency I know you have in abundance.";
var x4 = ds_map_create();
x4[? "speaker"] = player_obj;
x4[? "line"] = "...";
defeat_script = ds_list_create();
ds_list_add(defeat_script, x1, x2, x3, x4);

opponent_name = "Ivan the Hacker";

logos_stat = 1.0;
ethos_stat = 2.0;
pathos_stat = 1.0;
flirt_stat = 1.3;
friend_stat = 1.0;
agro_stat = 5.0;

image_xscale = 5;
image_yscale = 5;