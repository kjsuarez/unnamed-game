function win_condition_met() {
	var player_loss = (player_obj.logos_health + player_obj.ethos_health + player_obj.pathos_health + player_obj.flirt_health + player_obj.friend_health + player_obj.agro_health >= 10);
	var opponent_loss = (opponent_obj.logos_health + opponent_obj.ethos_health + opponent_obj.pathos_health + opponent_obj.flirt_health + opponent_obj.friend_health + opponent_obj.agro_health >= 10);


	if(player_loss){
		return "opponent";
	}
	if(opponent_loss){
		return "player";
	}
	return false;


}
