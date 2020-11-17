// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choices_for_event_metadata(current_event_metadata){

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
	return choice_array;
}