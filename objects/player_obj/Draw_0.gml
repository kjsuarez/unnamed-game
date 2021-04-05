/// @description Insert description here
draw_self();
//draw_text(30, 700, "player: " + string(logos_health));

draw_set_colour(c_red);
draw_text(x - 120, y + 235, "logos: " + string(logos_health));
draw_text(x - 30, y + 235, "ethos: " + string(ethos_health)); 
draw_text(x + 60, y + 235, "pathos: " + string(pathos_health)); 
draw_text(x - 120, y + 255, "flirt: " + string(flirt_health)); 
draw_text(x - 30, y + 255, "friend: " + string(friend_health));
draw_text(x + 60, y + 255, "aggro: " + string(agro_health));


draw_text(x - 120,  y - 235, "RP: " + string(retorical_points));
draw_text(x - 120,  y - 255, "mod: " + string(temp_modifier));