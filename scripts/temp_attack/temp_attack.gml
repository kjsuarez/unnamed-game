// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function temp_attack(card_inst, params){
	attack_inst = instance_create_depth(opponent_obj.x, opponent_obj.y, -100, attack_obj);
	with(attack_inst){
		sprite_index = slash_spr;
		animation_script = "resolve_at_animation_end";
		action_script = "do_cards_damage";
		script_params = ds_map_create();
		total_animation_steps = 0;
		animation_counter = 0;
		original_card = card_inst;
	}
}