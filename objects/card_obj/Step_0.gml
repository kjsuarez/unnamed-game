/// @description Insert description here

if(outro_status == "animating"){
	if(!is_undefined(outro_script) && outro_script != false){
		var animationScriptToCall = asset_get_index(outro_script);
		var animation_response = script_execute(animationScriptToCall, self, script_params)

		if(animation_response == true){
			outro_status = "finished";
			card_cleanup(self);
		}
	}else{
		outro_status = "finished";
		card_cleanup(self);
	}
}

