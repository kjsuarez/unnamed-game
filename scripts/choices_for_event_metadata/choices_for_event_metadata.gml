function choices_for_event_metadata(current_event_metadata){

	var choice_metadata_array = ds_list_create();
	var choice_array = ds_list_create();
	var choice_index = 0;
	
	ds_list_shuffle(choice_metadata_array);

	while(choice_index < ds_list_size(current_event_metadata[? "possible_choices"])){
		var possible_choice = current_event_metadata[? "possible_choices"][| choice_index];
		// disregard possible_choice if flag missing
		if(true){//choice_is_legal(possible_choice)) {
			ds_list_add(choice_metadata_array, possible_choice);
		}
		choice_index += 1;
		
		if(ds_list_size(choice_metadata_array) >= current_event_metadata[? "choice_count"]) {
			break;
		}		
	}
	for(var i = 0; i < ds_list_size(choice_metadata_array); i++;){
		var choice_metadata = choice_metadata_array[| i];
		var choice_inst = instance_create_depth(700, (400 + (80*i)), 10, choice_obj);
		with(choice_inst){
			legal = choice_is_legal(choice_metadata);
			flag_dependent = ds_map_is_map(choice_metadata, "flag_needed");
			
			display_text = choice_metadata[? "display_text"];
			responce_text = choice_metadata[? "responce_text"];

			if(is_string(choice_metadata[? "new_context"])){
				new_context = choice_metadata[? "new_context"];
			}
			if(is_string(choice_metadata[? "encounter"])){
				encounter = choice_metadata[? "encounter"];
				win_event = choice_metadata[? "win_event"];
				lose_event = choice_metadata[? "lose_event"];
			}
			if(current_event_metadata[? "last_event"] == true || choice_metadata[? "last_choice"] == true){
				last_event = true;
			}
			if(!is_undefined(choice_metadata[? "set_flag"])){
				//ds_list_add(global.game_state_flags, choice_metadata[? "set_flag"]) 
				set_flag = choice_metadata[? "set_flag"]
				show_debug_message("adding set_flag variable to choice")
			}
		}
		ds_list_add(choice_array, choice_inst);
	}
	return choice_array;
}