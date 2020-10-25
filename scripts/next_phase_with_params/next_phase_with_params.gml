// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function next_phase_with_params(animator_inst, script_params){
	var current_phase = global.turn;
	var found_it = false;
	var phase_pool_size = ds_list_size(encounter_state_obj.phases);
	for(i=0; i < ds_list_size(encounter_state_obj.phases); i+=1;){
		if(encounter_state_obj.phases[| i] == current_phase){
			if( i == ds_list_size(encounter_state_obj.phases) - 1){
				global.turn = encounter_state_obj.phases[| 0];
				
				break;
			}else{
				global.turn = encounter_state_obj.phases[| i+1];
				break;
			}	
		}
	}
}