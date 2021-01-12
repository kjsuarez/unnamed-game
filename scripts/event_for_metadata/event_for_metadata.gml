function event_for_metadata(event_metadata, choices_arry){
	ds_list_add(global.game_state_previous_events, event_metadata[? "id"]);
	show_debug_message("adding event: " + string(event_metadata[? "id"]) + " to list");
	show_debug_message("All previous events: " + string(global.game_state_previous_events));
	
	show_debug_message("saving game");
	save_game();
	show_debug_message("finished saving game");
	
	var event_inst = instance_create_depth(500, 254, 11, event_obj);
	with(event_inst){
		image_xscale = 3;
		image_yscale = 3;
		event_text = event_metadata[? "event_text"];
		choices = choices_arry;
		
		if(event_metadata[? "no_step"] == true){
			no_step = true;
		}
	}
}