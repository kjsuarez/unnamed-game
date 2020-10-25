/// @description Insert description here
var all_opponents = ds_list_create();


var flirt = ds_map_create();
flirt[? "name"] = "Flirty Gerdy";
flirt[? "object"] = flirty_gerdy_obj;

var normie = ds_map_create();
normie[? "name"] = "Generic";
normie[? "object"] = opponent_obj;


ds_list_add(all_opponents, flirt);
ds_list_add(all_opponents, normie);
ds_list_shuffle(all_opponents);

node_data =  all_opponents[| 0];
draw_set_colour(c_red);