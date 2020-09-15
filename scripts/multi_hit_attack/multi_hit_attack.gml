// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
		original_card = card_inst;
	}
}