/// @description Insert description here

if(global.turn == "enemy"){
	thinking += 1;
	if(thinking > 50){
		player_obj.logos += 1;
		if(player_obj.logos == 5){
			//room_restart();
		}
		thinking = 0;	
		deal_hand();
		global.turn = "player";
		
	}
}