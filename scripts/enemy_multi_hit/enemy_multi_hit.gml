function enemy_multi_hit(script_params){
	var target = target_coordinates(player_obj);
	show_debug_message("about to create a recursive damage animator")
	create_animator([target[0], target[1]], slash_spr, "resolve_at_animation_end", "enemy_recursive_damage", opponent_obj, script_params);	
}

/*
function multi_hit_attack(card_inst, xxx_params){
	var target_coor = target_coordinates(opponent_obj);
	attack_inst = instance_create_depth(target_coor[0], target_coor[1], -100, animator_obj);
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
*/