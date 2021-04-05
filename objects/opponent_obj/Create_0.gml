/// @description Generic opponent setup

//hp values and stats
logos_health = 0;
ethos_health = 0;
pathos_health = 0;
flirt_health = 0;
friend_health = 0;
agro_health = 0;

logos_stat = 1.0;
ethos_stat = 1.0;
pathos_stat = 1.0;
flirt_stat = 1.0;
friend_stat = 1.0;
agro_stat = 1.0;

intro_script = ds_list_create();

multplier_x = 992;
multplier_y = 448;

initial_token_location = [x - 100, y];
initial_status_location = [x - 60, y + 275];
speech_coor = [875, 130];
y_offset = 60;

tokens = ds_list_create();
statuses = ds_list_create();
temp_modifier = 1;

//turn order params
encounter_concluded = false; //has somebody won, this does not mean dialog or card selection has finished
my_turn = false;
thinking = 0;
animating = false;
status_thinking = 0;

name_str = "opponent";
standard_sprite = asset_get_index("profile_standin");

opponent_name = "Generic Opponent";

image_xscale = -6;
image_yscale = 6;
behavior_choice = false;

var opponent_bar = instance_create_depth(x - abs(sprite_width/2) + 30, y + abs(sprite_height/2) - 10, -1, rhetoric_bar_obj);
with(opponent_bar){
	owner = opponent_obj;
}