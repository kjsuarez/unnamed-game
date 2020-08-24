// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_to_combatant(str){
	switch (str){
		case "player":
			return player_obj;
			break;
		case "enemy":
			return opponent_obj;
			break;
	}
}