/// @description Insert description here

if(animation_script != false){
	var animationScriptToCall = asset_get_index(animation_script);
	var animation_response = script_execute(animationScriptToCall, self, script_params)

	if(animation_response == true){
		var actionScriptToCall = asset_get_index(action_script);
		var action_response = script_execute(actionScriptToCall, original_card, script_params)
		
		//hand_obj.card_in_action = false;
		instance_destroy(self);
	}
	animation_counter += 1;
}else{
	var actionScriptToCall = asset_get_index(action_script);
	var action_response = script_execute(actionScriptToCall, original_card, script_params)
	//hand_obj.card_in_action = false;
	instance_destroy(self);
}
