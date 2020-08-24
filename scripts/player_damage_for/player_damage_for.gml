function player_damage_for(card_inst){
	var total_damage = card_inst.damage * player_obj.temp_modifier;
	return total_damage;
}