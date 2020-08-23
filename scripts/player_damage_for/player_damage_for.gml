// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_damage_for(card_inst){
	var total_damage = card_inst.damage * player_obj.temp_modifier;
	return total_damage;
}