function choice_is_legal(choice_metadata){

	var legal = true;
	
	
	show_debug_message("Checking if choice " + choice_metadata[? "id"] + " is legal");

	if(choice_metadata[? "flag_needed"] == false){
		
	}else{
		var poop = choice_metadata[? "flag_needed"];
		
		if(ds_map_is_map(choice_metadata, "flag_needed")){
			var needed_flag = choice_metadata[? "flag_needed"][? "name"];
			
			
			if(is_undefined(global.game_state_flags[? needed_flag]) ){
				show_debug_message("choice is illegal because it is missing a needed flag");
				return false;
			} else {
				var needed_state = choice_metadata[? "flag_needed"][? "state"];
				if(global.game_state_flags[? needed_flag] != needed_state){
					show_debug_message("choice is illegal because it has a flag but with the wrong value");
					return false;
				}
			}
		}
	}
	
	return legal;
}

