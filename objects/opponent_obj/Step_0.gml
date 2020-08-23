/// @description Insert description here

if(global.turn == "enemy"){
	thinking += 1;
	if(thinking > 50){
		
		//turn behavior:		
		if(has_multiplier("enemy")){
			var owners_modifiers = mod_tokens_for("enemy");
			mod_inst = owners_modifiers[| 0];
			instance_destroy(mod_inst);
			opponent_obj.temp_modifier = mod_inst.modifier;
			enemy_attack(2);
		}else{
			add_multiplier("enemy", 2);

		}	
		
		if(is_string(win_condition_met())){
			room_restart();
		}
		thinking = 0;	
		deal_hand();
		global.turn = "player";
		
	}
}