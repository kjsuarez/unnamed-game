function event_for_metadata(event_metadata, choices_arry){
	
	temp_hash = ds_map_create();
	ds_map_add_list(temp_hash, "previous_events", global.game_state_previous_events);
	temp_string = json_encode(temp_hash);
	show_debug_message("All previous events before adding new event: " + temp_string);
	
	
	ds_list_add(global.game_state_previous_events, event_metadata[? "id"]);
	show_debug_message("adding event: " + string(event_metadata[? "id"]) + " to list");
	temp_hash = ds_map_create();
	ds_map_add_list(temp_hash, "previous_events", global.game_state_previous_events);
	temp_string = json_encode(temp_hash);
	show_debug_message("All previous events after adding new event: " + temp_string);
	
	show_debug_message("saving game");
	save_game();
	show_debug_message("finished saving game");
	
	
	var event_inst = instance_create_depth((room_width/2), (room_height/2), 11, event_obj);
	with(event_inst){
		image_xscale = 3;
		image_yscale = 3;
		event_text = event_metadata[? "event_text"];
		choices = choices_arry;
		
		/*
		if(!is_undefined(event_metadata[? "background"])){
			background_sprite_name = event_metadata[? "background"]
			
		} else {	
			background_sprite_name = false;
			
		}
		*/
		
		// set background
		if(!is_undefined(event_metadata[? "background"])){
			
	
			var background_sprite = asset_get_index(event_metadata[? "background"]);
			
			var lay_id = layer_get_id("Background");
			var back_id = layer_background_get_id(lay_id);
	
			layer_background_sprite(back_id, background_sprite);
			layer_background_blend(back_id, -1);
			layer_background_stretch(back_id, true);
		}
		
		if(event_metadata[? "no_step"] == true){
			no_step = true;
		}
	}
}