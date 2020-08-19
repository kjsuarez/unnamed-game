function win_condition_met() {
	var player_loss = (player_obj.logos_health >= 10 || player_obj.ethos_health >= 10 || player_obj.pathos_health >= 10 || player_obj.flirt_health >= 10 || player_obj.friend_health >= 10 || player_obj.agro_health >= 10);
	var opponent_loss = (opponent_obj.logos_health >= 10 || opponent_obj.ethos_health >= 10 || opponent_obj.pathos_health >= 10 || opponent_obj.flirt_health >= 10 || opponent_obj.friend_health >= 10 || opponent_obj.agro_health >= 10);


	if(player_loss){
		return "player";
	}
	if(opponent_loss){
		return "opponent";
	}
	return false;


}
