// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_total_damage(combatant){
	return combatant.logos_health + combatant.ethos_health + combatant.pathos_health + combatant.flirt_health + combatant.friend_health + combatant.agro_health
}