function next_phase(){
	var current_phase = global.turn;
	var found_it = false;
	var phase_pool_size = ds_list_size(encounter_state_obj.phases);
	for(i=0; i < ds_list_size(encounter_state_obj.phases); i+=1;){
		if(encounter_state_obj.phases[| i] == current_phase){
			if( i == ds_list_size(encounter_state_obj.phases) - 1){
				var new_phase = encounter_state_obj.phases[| 0];
			}else{
				var new_phase = encounter_state_obj.phases[| i+1];
			}	
			global.turn = new_phase;
			if(new_phase == "player"){
				global.turn_number += 1;
			}
			break;
		}
	}
	
}