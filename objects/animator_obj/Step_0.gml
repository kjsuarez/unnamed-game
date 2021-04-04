/// @description Insert description here

show_debug_message("action_status for " + string(id) + ": " + action_status);
show_debug_message("number of children: " + string(ds_list_size(children)));
switch(action_status){
    case "animating": 
		
		if(animation_script != false){
			var animationScriptToCall = asset_get_index(animation_script);
			var animation_response = script_execute(animationScriptToCall, self, script_params)
			show_debug_message("CHANGE OPPONENT SPRITE TO GETTING HIT")
			if variable_instance_exists(originating_instance, "target") {
				show_debug_message(originating_instance.target)
				if(originating_instance.target == "opponent"){
					opponent_obj.sprite_index = opponent_obj.attacked_sprite;
				}
			}


			
			if(animation_response == true){
				show_debug_message("CHANGE OPPONENT SPRITE TO NORMAL")
				opponent_obj.sprite_index = opponent_obj.standard_sprite;
				action_status = "acting"
			}
			animation_counter += 1;
		}else{
			action_status = "acting"
		}
		break;
    case "acting": 
		if(action_script != false){
			if(ds_list_size(children) == 0){
				var actionScriptToCall = asset_get_index(action_script);
				var action_response = script_execute(actionScriptToCall, originating_instance, script_params)
				show_debug_message("no children, about to clean up animator " + string(id));
				action_status = "cleanup"
			}
		}else{
			action_status = "cleanup"
		}
		break;
	case "cleanup":
		has_sprite = false;
		if(ds_list_size(children) == 0){
			if(!is_undefined(script_params[? "cleanup_script"])){
				var scriptToCall = asset_get_index(script_params[? "cleanup_script"]);
				script_execute(scriptToCall, self, script_params)
			}else{
				// we do not want to automatically advance phase if no cleanup script is specified
			}
			remove_animator_from_child_list(self);
			cleanup_animator(self);
		}
		
	break;
}

