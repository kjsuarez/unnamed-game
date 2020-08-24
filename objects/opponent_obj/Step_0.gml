/// @description Insert description here

if(global.turn == "enemy"){
	thinking += 1;
	if(thinking > 50){
		handle_enemy_turn()
		
		
		if(is_string(win_condition_met())){
			room_restart();
		}
		thinking = 0;	
		deal_hand();
		global.turn = "player";
		
	}
}