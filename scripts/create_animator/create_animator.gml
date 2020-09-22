// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_animator(target_coor, sprite_param, animation_script_str, action_script_str, original_inst, animator_script_params){

	attack_inst = instance_create_depth(target_coor[0], target_coor[1], -100, animator_obj);
	with(attack_inst){
		sprite_index = sprite_param;
		animation_script = animation_script_str;
		action_script = action_script_str;
		script_params = animator_script_params;
		total_animation_steps = 0;
		animation_counter = 0;
		originating_instance = original_inst;
	}
}