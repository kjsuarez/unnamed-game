/// @description Insert description here

show_debug_message("action_status for " + string(id) + ": " + action_status);

switch(action_status){
    case "animating": 
		
		if(animation_script != false){
			var animationScriptToCall = asset_get_index(animation_script);
			var animation_response = script_execute(animationScriptToCall, self, script_params)
			
			if(animation_response == true){
				action_status = "acting"
			}
			animation_counter += 1;
		}else{
			action_status = "acting"
		}
		break;
    case "acting": 
		var actionScriptToCall = asset_get_index(action_script);
		var action_response = script_execute(actionScriptToCall, originating_instance, script_params)
		if(ds_list_size(children) == 0){
			show_debug_message("no children, about to clean up animator " + string(id));
			action_status = "cleanup"
		}
		
		break;
	case "cleanup":
		if(!is_undefined(script_params[? "cleanup_script"])){
			var scriptToCall = asset_get_index(script_params[? "cleanup_script"]);
			script_execute(scriptToCall, self, script_params)
		}
		cleanup_animator(self);
	break;
}

