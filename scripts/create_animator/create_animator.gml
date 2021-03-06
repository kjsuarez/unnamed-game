function create_animator(target_coor, sprite_param, animation_script_str, action_script_str, original_inst, animator_script_params){

	attack_inst = instance_create_depth(target_coor[0], target_coor[1], -100, animator_obj);
	with(attack_inst){
		sprite_index = sprite_param;
		animation_script = animation_script_str;
		action_script = action_script_str;
		script_params = animator_script_params;
		script_params[? "params_owner"] = self;
		total_animation_steps = 0;
		animation_counter = 0;
		originating_instance = original_inst;
	}
}