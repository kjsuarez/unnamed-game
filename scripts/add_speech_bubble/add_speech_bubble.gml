// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_speech_bubble(target_combatent, text, is_question){
	var bubble_inst = instance_create_depth(target_combatent.speech_coor[0], target_combatent.speech_coor[1], 0, speech_bubble_obj);
	with(bubble_inst){
		speaker = target_combatent;
		text_body = text;
		owner = target_combatent;
		question = is_question;
	}
	show_debug_message("### Created speech bubble ###")
}