/// @description Insert description here

// Inherit the parent event
event_inherited();

// set background

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, flame_war_background_spr);
layer_background_stretch(back_id, true);


standard_sprite = asset_get_index("granny_neutral_spr");
attacked_sprite = asset_get_index("granny_neutral_spr");

behavior_script = "klanma_choose_behavior";
speech_behavior_script = "klanma_speech_behavior";
act_behavior_script = "klanma_act_on_behavior";
question_behavior_script = "klanma_act_on_question";
//intro_script = asset_get_index("klanma_intro_script");

// intro script
var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "Did you know that lizard people are using congress as a breeding farm?";

var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "Gramma that's just not true.";

var x3 = ds_map_create();
x3[? "speaker"] = opponent_obj;
x3[? "line"] = "No sweetie it really is. A nice young man told me about it on youtube. Hillary Clinton is the prime minister of the moon.";
x3[? "sprite"] = granny_neutral_spr;

var x4 = ds_map_create();
x4[? "speaker"] = player_obj;
x4[? "line"] = "We're gonna get this sorted.";


intro_script = ds_list_create();
ds_list_add(intro_script, x1, x2, x3, x4);

// victory script
var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "Sorry dear but I think you might need to do a little more research. Politics can be complicated but if you do the work you'll see the truth.";
x1[? "sprite"] = granny_neutral_spr;
var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "*sigh* Yeah ok Gandma.";	
victory_script = ds_list_create();
ds_list_add(victory_script, x1, x2);

// loss script
var x1 = ds_map_create();
x1[? "speaker"] = opponent_obj;
x1[? "line"] = "You've given me a lot to think about Simon. Maybe the moon really isn't a matte painting commisioned by Stanley Kubrick.";
x1[? "sprite"] = granny_neutral_spr;
var x2 = ds_map_create();
x2[? "speaker"] = player_obj;
x2[? "line"] = "Jesus Christ Thank You.";	
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

opponent_name = "Klanma";
/*
logos_stat = 1.5;
ethos_stat = 0.2;
pathos_stat = 0.2;
flirt_stat = 0.1;
friend_stat = 0.2;
agro_stat = 0.1;
*/

logos_stat = 2;
ethos_stat = 2;
pathos_stat = 2;
flirt_stat = 2;
friend_stat = 2;
agro_stat = 2;

image_xscale = 5;
image_yscale = 5;

// opponent specific variables
monologue_counter = 0;

// statuses
/*
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


ds_list_add(statuses, temp_status_inst);
ds_list_add(statuses, yyy_status_inst);

**/