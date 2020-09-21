function store_damage_taken(token_inst, token_params, damage){
	token_inst.damage = damage;
	ani_inst = instance_create_depth(token_inst.x, token_inst.y, -100, animator_obj);
	with(ani_inst){
		sprite_index = small_heart_spr;
		animation_script = "resolve_at_animation_end";
		action_script = "yield_turn";
		script_params = token_params
		total_animation_steps = 0;
		animation_counter = 0;
		originating_instance = token_inst;
	}
	
}