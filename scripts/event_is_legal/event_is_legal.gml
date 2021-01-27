function random_event_is_legal(event_metadata){
	var legal = true;
	show_debug_message("Checking if event " + event_metadata[? "id"] + " is legal");
	// check if event has been played already
	var past_events = global.game_state_previous_events;
	var meep_morp = event_metadata[? "repeatable"];
	show_debug_message("Is this event repeatable: " + string(meep_morp));
	
	if(event_metadata[? "repeatable"] != true){
		show_debug_message("This event is not repeatable!")
		show_debug_message("past event array size: " + string(ds_list_size(past_events)))
		for(i=0; i < ds_list_size(past_events); i+=1;){
			show_debug_message("displaying ids from past_events: " + past_events[| i]);
			
		}
		for(i=0; i < ds_list_size(past_events); i+=1;){
			if(past_events[| i] == event_metadata[? "id"]){
				show_debug_message("event is illegal because it has already been used");
				return false;
			}
		}
	}
	
	if(event_metadata[? "randomly_selectable"] != true){
		show_debug_message("event is illegal because it cannot be selected randomly");
		return false;
	}
	if(event_metadata[? "flag_needed"] == false){
		
	}else{
		var poop = event_metadata[? "flag_needed"];
		
		if(ds_map_is_map(event_metadata, "flag_needed")){
			var needed_flag = event_metadata[? "flag_needed"][? "name"];
			
			
			if(is_undefined(global.game_state_flags[? needed_flag]) ){
				show_debug_message("event is illegal because it is missing a needed flag");
				return false;
			} else {
				var needed_state = event_metadata[? "flag_needed"][? "state"];
				if(global.game_state_flags[? needed_flag] != needed_state){
					show_debug_message("event is illegal because it has a flag but with the wrong value");
					return false;
				}
			}
		}
	}
	
	return legal;
}