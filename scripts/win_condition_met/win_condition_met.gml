function win_condition_met() {
	var player_loss = (player_obj.logos_health + player_obj.ethos_health + player_obj.pathos_health + player_obj.flirt_health + player_obj.friend_health + player_obj.agro_health >= 10);
	var opponent_loss = (opponent_obj.logos_health + opponent_obj.ethos_health + opponent_obj.pathos_health + opponent_obj.flirt_health + opponent_obj.friend_health + opponent_obj.agro_health >= 3);
	var alternative_victor = encounter_state_obj.alternative_victor;
	
	if(is_string(alternative_victor)) {
		return alternative_victor;
	}
	if(player_loss){
		return "opponent";
	}
	if(opponent_loss){
		return "player";
	}
	return false;

}
