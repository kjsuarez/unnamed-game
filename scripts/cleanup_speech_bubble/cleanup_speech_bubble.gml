// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cleanup_speech_bubble(bubble_inst){
	instance_destroy(bubble_inst);
	dialog_state_obj.active_speech_bubble = false;
	
	if(dialog_state_obj.intro_in_progress){
		bubble_inst.owner.sprite_index = bubble_inst.owner.standard_sprite;
	} else {
		if(bubble_inst.owner == player_obj){
		
		
			dialog_state_obj.speak_from_card = false;
			var card_to_call = dialog_state_obj.card_in_question;
			dialog_state_obj.card_in_question = false;
			act_on_card(card_to_call);
		}
	
		if(bubble_inst.owner == opponent_obj){
			dialog_state_obj.speak_from_enemy = false;
			dialog_state_obj.enemy_speech_in_question = "...";
			if(bubble_inst.question != false){
				var questionScriptToCall = asset_get_index(opponent_obj.question_behavior_script);
				var choice = script_execute(questionScriptToCall, dialog_state_obj.enemy_question, dialog_state_obj.question_response);
			} else {
				var actionScriptToCall = asset_get_index(opponent_obj.act_behavior_script);
				var choice = script_execute(actionScriptToCall, opponent_obj.behavior_choice);
			}
		}
	}
	
	
	
}