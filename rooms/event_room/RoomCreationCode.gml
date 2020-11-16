if(global.game_state_day == 0){
	build_event_for_context("start");
}

if(global.next_event != false){
	var event_hash = load_json("events.json");
	var contexts_array = event_hash[? "contexts"];
	// find event whos id matches win_event
	for(var i = 0; i < ds_list_size(contexts_array); i++;){
		var current_context = contexts_array[| i];
		if(current_context[? "context_id"] == global.game_state_context){
			var possible_events = current_context[? "events"];
		}
	}
	for(var i = 0; i < ds_list_size(possible_events); i++;){
		if(possible_events[| i][? "id"] == global.next_event){
			var current_event_metadata = possible_events[| i];
			break;
		}
	}
		
	// hydrate choices
	// hydrate event
	// give event choices
	var choice_metadata_array = ds_list_create();
	var choice_array = ds_list_create();
	var choice_index = 0;
	while(ds_list_size(choice_metadata_array) < current_event_metadata[? "choice_count"]){
		var possible_choice = current_event_metadata[? "possible_choices"][| choice_index];
		// disregard possible_choice if flag missing
		ds_list_add(choice_metadata_array, possible_choice);
		choice_index += 1;
	}
	for(var i = 0; i < ds_list_size(choice_metadata_array); i++;){
		var choice_metadata = choice_metadata_array[| i];
		var choice_inst = instance_create_depth(700, (400 + (80*i)), 10, choice_obj);
		with(choice_inst){
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
		}
		ds_list_add(choice_array, choice_inst);
	}
	
	var event_inst = instance_create_depth(500, 254, 11, event_obj);
		
	with(event_inst){
		image_xscale = 3;
		image_yscale = 3;
		event_text = current_event_metadata[? "event_text"];
		choices = choice_array;
	}
	
	global.next_event = false;
}











