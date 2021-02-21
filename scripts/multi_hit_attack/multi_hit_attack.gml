function multi_hit_attack(card_inst, xxx_params){
	var target_coor = target_coordinates(opponent_obj, card_inst.target);
	var attack_inst = instance_create_depth(target_coor[0], target_coor[1], -100, animator_obj);
	
	var temp_string = json_encode(xxx_params);
	
	with(attack_inst){
		sprite_index = slash_spr;
		animation_script = "resolve_at_animation_end";
		action_script = "do_recursive_damage";
		script_params = xxx_params
		total_animation_steps = 0;
		animation_counter = 0;
		originating_instance = card_inst;
	}
}