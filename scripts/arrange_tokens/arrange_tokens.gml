function arrange_tokens(combatant){
	tokens = combatant.tokens
	show_debug_message("arranging " + string(ds_list_size(tokens)) + " tokens");
	for(i=0; i<ds_list_size(tokens); i+=1;){
		current_token = tokens[| i];
		
		var inst_y = combatant.initial_token_location[1] + (token_set_obj.y_offset * i);
		current_token.y = inst_y;
		show_debug_message("token" + string(current_token.id) + "at position " + string(i) + " at y positon " + string(current_token.y));
	}
}