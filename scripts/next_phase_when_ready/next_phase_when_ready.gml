// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function next_phase_when_ready(animator_inst, script_params){
	show_debug_message("animators_finished value: " + string(script_params[? "animators_finished"] == true))
	if(script_params[? "animators_finished"] == true){
		show_debug_message("next phase from next_phase_when_ready")
		next_phase();
		show_debug_message("phase is: " + global.turn);
	}
}