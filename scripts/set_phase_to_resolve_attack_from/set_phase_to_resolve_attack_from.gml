function set_phase_to_resolve_attack_from(aggresor){
	if(aggresor == player_obj){
		global.turn = "resolve_player_attack";
	}else{
		global.turn = "resolve_enemy_attack";
	}
	
}