/// @description Insert description here
logos_health = 0;
ethos_health = 0;
pathos_health = 0;
flirt_health = 0;
friend_health = 0;
agro_health = 0;

logos_stat = 0.8;
ethos_stat = 1.1;
pathos_stat = 0.8;
flirt_stat = 1.1;
friend_stat = 0.8;
agro_stat = 1.1;

retorical_points = 3;
tokens = ds_list_create();
statuses = ds_list_create();
temp_modifier = 1;

multplier_x = 100;
multplier_y = 100;

my_turn = false;
selecting_target = false;
answering_question = false;

initial_token_location = [300, 300];
initial_status_location = [110, 290];
speech_coor = [480, 670];
y_offset = -60;

name_str = "player";
standard_sprite = asset_get_index("profile_standin");

image_xscale = 6;
image_yscale = 6;

var player_bar = instance_create_depth(x - abs(sprite_width/2) + 70, y + abs(sprite_height/2) + 20, -1, rhetoric_bar_obj);
with(player_bar){
	owner = player_obj;
}