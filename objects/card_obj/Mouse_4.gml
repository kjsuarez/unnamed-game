/// @description Insert description here

if(players_turn() || player_can_answer_question()){
	
	if(player_obj.retorical_points >= cost ){
		player_obj.retorical_points = player_obj.retorical_points - cost
		handle_card(self);
	}	
}