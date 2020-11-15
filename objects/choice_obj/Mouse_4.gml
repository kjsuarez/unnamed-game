/// @description Insert description here

show_debug_message("choice click registered");

if(!selected){
	selected = true;
	var choice_array = event_obj.choices
	event_obj.response = responce_text;
	
	for(i=0; i < ds_list_size(choice_array); i+=1;){
		var current_choice = choice_array[| i];
		
		show_debug_message("current choice selected: " + string(current_choice.selected));
		
		if(!current_choice.selected){
			ds_list_delete(choice_array, i)
			instance_destroy(current_choice);
		}
	}
} else {
	
	
	if(present_in(self, "new_context")){
		instance_destroy(event_obj);
		instance_destroy(choice_obj);
		global.game_state_day += 1;
		global.game_state_context = new_context;
		event_state_obj.transition = true;
	} else{
		if(present_in(self, "encounter")){
			instance_destroy(event_obj);
			instance_destroy(choice_obj);
			// do the thing node object click does, but add metadata about what to do on victory/defeat.
			var opponent_object = asset_get_index(encounter);
			enter_encounter(opponent_object);
		}else{
			instance_destroy(event_obj);
			instance_destroy(choice_obj);
			//handle_new_event(global.game_state_context);
			build_event_for_context(global.game_state_context);
		}
	}
	
}
