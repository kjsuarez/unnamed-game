function random_event_is_legal(event_metadata){
	var legal = true;
	
	// check if event has been played already
	var past_events = global.game_state_previous_events;
	if(event_metadata[? "repeatable"] != true){
		for(i=0; i < ds_list_size(past_events); i+=1;){
			if(past_events[| i] == event_metadata[? "id"]){
				return false;
			}
		}
	}
	
	if(event_metadata[? "randomly_selectable"] != true){
		return false;
	}
	if(event_metadata[? "flag_needed"] != true){
		
	}else{
		if(ds_map_is_map(event_metadata, "flag_needed")){
			var needed_flag = event_metadata[? "flag_needed"][? "name"];
			if(is_undefined(global.game_state_flags[? needed_flag]) ){
				return false;
			} else {
				var needed_state = event_metadata[? "flag_needed"][? "state"];
				if(global.game_state_flags[? needed_flag] != needed_state){
					return false;
				}
			}
		}
	}
	
	return legal;
}