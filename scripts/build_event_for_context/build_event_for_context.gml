// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function build_event_for_context(context_str){


	var file_path = "events.json";
	if(file_exists(file_path)){
		var event_hash = load_json(file_path);
	
		var contexts_array = event_hash[? "contexts"];

		// pull start room context
		for(var i = 0; i < ds_list_size(contexts_array); i++;){
			var current_context = contexts_array[| i];
			show_debug_message("context id: " + string(current_context[? "context_id"]));
			if(current_context[? "context_id"] == context_str){
				var possible_events = current_context[? "events"];
			}
		}
		// pull start room event, build it into an object
		ds_list_shuffle(possible_events);
		var current_event_metadata = possible_events[| 0];
		// pull a number of choices equal to choice_count, build them into choices
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
	
	}
	else{
		show_error("Missing Event JSON", true);
	}


}