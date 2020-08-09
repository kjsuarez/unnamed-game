/// @description Insert description here
damage = irandom(4) + 1;
cost = irandom(2) + 1;
details = "I'm a card! \nI do " + string(damage) + " damage\n" + "I cost " + string(cost) + "RP";
details_length = string_length(details);
show_debug_message("string length: " + string(details_length));

draw_set_colour(c_red);