function opposite_of_combatant(combatant){
	if(real(combatant.id) == player_obj.id){
		return opponent_obj;
	}else{
		return player_obj;
	}
}