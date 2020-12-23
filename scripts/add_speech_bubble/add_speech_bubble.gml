function add_speech_bubble(target_combatent, text, is_question){
	var bubble_inst = instance_create_depth(target_combatent.speech_coor[0], target_combatent.speech_coor[1], -1000, speech_bubble_obj);
	with(bubble_inst){
		speaker = target_combatent;
		text_body = text;
		owner = target_combatent;
		question = is_question;
		if(target_combatent == opponent_obj){
			image_xscale = (image_xscale * -1);
		}
	}
	show_debug_message("### Created speech bubble ###")
}