// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function present_in(inst, variable_str){
	var clone_inst = inst;
	if(variable_struct_exists(clone_inst, variable_str)){
		var inst_var = variable_instance_get(clone_inst, variable_str)
		
		return (inst_var != 0);
	} else {
		return false
	}

}