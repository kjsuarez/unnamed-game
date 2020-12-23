/// @description Insert description here
draw_set_colour(c_red);
draw_text(10, 100, global.turn_number); 
draw_text(40, 100, global.turn); 
draw_text(10, 290, "win: " + win_event);
draw_text(10, 310, "lose: " + lose_event);
