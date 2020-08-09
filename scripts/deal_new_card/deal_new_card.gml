{
	var inst_x = argument0;
	var inst_y = argument1;
	var inst_z = argument2;
	
	
	var card_inst;
		card_inst = instance_create_depth(inst_x, inst_y, inst_z, card_obj);
		with(card_inst){
			image_xscale = hand.card_scale;
			image_yscale = hand.card_scale;
		}
}