// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hot_and_cold(card_inst, params){
	var target_coor = target_coordinates(opponent_obj, card_inst.target);
	attack_inst = instance_create_depth(target_coor[0], target_coor[1], -100, animator_obj);
	with(attack_inst){
		sprite_index = slash_spr;
		animation_script = "resolve_at_animation_end";
		action_script = "do_card_damage_and_heal";
		script_params = ds_map_create();
		total_animation_steps = 0;
		animation_counter = 0;
		originating_instance = card_inst;
	}
}