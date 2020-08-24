// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function handle_enemy_turn(){
	//turn behavior:
	
	if(true){
		add_token("enemy")
		return;
	}
	
	if(has_multiplier("enemy")){
		var owners_modifiers = mod_tokens_for("enemy");
		mod_inst = owners_modifiers[| 0];
		instance_destroy(mod_inst);
		opponent_obj.temp_modifier = mod_inst.modifier;
		enemy_attack(2);
	}else{
		add_multiplier("enemy", 2);

	}	
}