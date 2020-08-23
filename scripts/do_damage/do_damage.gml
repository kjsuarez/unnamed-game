// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function do_damage(type, power){
	switch (type){
	    case "logos":
	        opponent_obj.logos_health = opponent_obj.logos_health + power;
	        break;
	    case "ethos":
	        opponent_obj.ethos_health = opponent_obj.ethos_health + power;
	        break;
	    case "pathos":
	        opponent_obj.pathos_health = opponent_obj.pathos_health + power;
	        break;
	    case "flirt":
	        opponent_obj.flirt_health = opponent_obj.flirt_health + power;
	        break;
	    case "friend":
	        opponent_obj.friend_health = opponent_obj.friend_health + power;
	        break;
	    case "aggro":
	        opponent_obj.agro_health = opponent_obj.agro_health + power;
	        break;
	}
}