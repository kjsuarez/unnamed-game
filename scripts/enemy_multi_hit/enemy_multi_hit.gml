function enemy_multi_hit(script_params){
	script_params[? "cleanup_script"] = "enemy_recursive_cleanup";
	var target = target_coordinates(player_obj);
	show_debug_message("about to create a recursive damage animator")
	create_animator(
		[target[0],	
		target[1]], 
		slash_spr, 
		"resolve_at_animation_end", 
		"enemy_attack_with_params", 
		opponent_obj, script_params
	);	
}