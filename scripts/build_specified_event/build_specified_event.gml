// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function build_specified_event(event_id){
	var event_hash = load_json("events.json");
	var contexts_array = event_hash[? "contexts"];
	// find event whos id matches win_event
	var found = false;
	for(var i = 0; i < ds_list_size(contexts_array); i++;){
		var current_context = contexts_array[| i];
		show_debug_message("context id: " + string(current_context[? "context_id"]))
		//if(current_context[? "context_id"] == global.game_state_context){
			var possible_events = current_context[? "events"];
			for(var j = 0; j < ds_list_size(possible_events); j++;){
				show_debug_message("event id: " + string(possible_events[| j][? "id"]))
				if(possible_events[| j][? "id"] == event_id){
					var current_event_metadata = possible_events[| j];
					found = true;
					break;
				}
			}
		//}
		if(found == true){
			break;
		}
	}
	/*
	for(var i = 0; i < ds_list_size(possible_events); i++;){
		if(possible_events[| i][? "id"] == event_id){
			var current_event_metadata = possible_events[| i];
			break;
		}
	}
	*/	
	// hydrate choices
	// hydrate event
	// give event choices
	var choice_array = choices_for_event_metadata(current_event_metadata);
	
	event_for_metadata(current_event_metadata, choice_array);
}