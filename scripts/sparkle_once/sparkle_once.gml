function sparkle_once(animator, script_params){
	if(animator.sprite_index == sparkle_spr){
		return resolve_at_animation_end(animator, script_params)
	}else{
		animator.sprite_index = sparkle_spr;
		return false;
	}
}