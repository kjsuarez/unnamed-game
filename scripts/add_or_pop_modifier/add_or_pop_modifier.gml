// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_or_pop_modifier(card_inst, script_params){
	var mod_count = instance_number(multiplier_token_obj);
	if(mod_count == 0){

		var mod_inst;
		mod_inst = instance_create_depth(100, 100, 0, multiplier_token_obj);
		with(mod_inst){
			image_xscale = 2//token_set_obj.token_scale;
			image_yscale = 2//token_set_obj.token_scale;
			modifier = 1;
			face_text = "x1";
		}
		card_cleanup(card_inst)
	}
	else{
		multiplier_token_obj.modifier = multiplier_token_obj.modifier * 2
		multiplier_token_obj.face_text = "x" + string(multiplier_token_obj.modifier);
		card_cleanup(card_inst)
	}
	
}