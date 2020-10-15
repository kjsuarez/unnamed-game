function store_damage_taken(token_inst, token_params, damage, animator_params){
	if(variable_instance_exists(token_inst, "damage")){
		token_inst.damage = token_inst.damage + damage;
	}else{
		token_inst.damage = damage;
	}
	
	
	var animator_parent = animator_params[? "params_owner"];
	ani_inst = instance_create_depth(token_inst.x, token_inst.y, -100, animator_obj);
	with(ani_inst){
		sprite_index = small_heart_spr;
		animation_script = "resolve_at_animation_end";
		action_script = false;
		script_params = token_params
		total_animation_steps = 0;
		animation_counter = 0;
		originating_instance = token_inst;
		parent = animator_parent;
	}
	add_animator_child(animator_parent, ani_inst);
}