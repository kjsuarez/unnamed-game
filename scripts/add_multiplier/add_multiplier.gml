// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_multiplier(user_str, value){
	mod_owner = string_to_combatant(user_str);
	var mod_inst;
	mod_inst = instance_create_depth(mod_owner.multplier_x, mod_owner.multplier_y, 0, multiplier_token_obj);
	with(mod_inst){
		image_xscale = 2//token_set_obj.token_scale;
		image_yscale = 2//token_set_obj.token_scale;
		modifier = value;
		face_text = "x" + string(modifier);
		owner = user_str;
	}
}