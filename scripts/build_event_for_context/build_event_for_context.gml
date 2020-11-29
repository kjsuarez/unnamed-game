function build_event_for_context(context_str){


	var file_path = "events.json";
	if(file_exists(file_path)){
		var event_hash = load_json(file_path);
	
		var contexts_array = event_hash[? "contexts"];

		// pull context metadata
		for(var i = 0; i < ds_list_size(contexts_array); i++;){
			var current_context = contexts_array[| i];
			show_debug_message("context id: " + string(current_context[? "context_id"]));
			if(current_context[? "context_id"] == context_str){
				var possible_events = current_context[? "events"];
			}
		}
		
		if(global.game_state_step >= global.steps_to_boss && global.context_boss_faced == false){
			global.context_boss_faced = true;
			for(var i = 0; i < ds_list_size(possible_events); i++;){
				if(possible_events[| i][? "boss_event"] == true){
					var current_event_metadata = possible_events[| i];
					break;
				}
			}
		} else {
			// pull random room event, build it into an object
			var current_event_metadata = false;
			ds_list_shuffle(possible_events);
			for(var i = 0; i < ds_list_size(possible_events); i++;){
				
				if(random_event_is_legal(possible_events[| i])){
					current_event_metadata = possible_events[| i];
					break;
				}
			}
			if(current_event_metadata == false){
				show_error("Ran out of random events to use in this context", true);
			}
		}
		
		
		
		// pull a number of choices equal to choice_count, build them into choices
		var choice_array = choices_for_event_metadata(current_event_metadata);
			
		event_for_metadata(current_event_metadata, choice_array);
	
	}
	else{
		show_error("Missing Event JSON", true);
	}


}