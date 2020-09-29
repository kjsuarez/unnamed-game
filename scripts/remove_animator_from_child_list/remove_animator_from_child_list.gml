function remove_animator_from_child_list(animator_inst){	
	if(animator_inst.parent != false){
		show_debug_message("animator siblings before removal: " + string(ds_list_size(animator_inst.parent.children)));
		// loop through each of parent's children and remove this one when you find him
		var animator_siblings = animator_inst.parent.children;
		var sibling_count = ds_list_size(animator_siblings);
		var clone_inst = animator_inst;
		for(i=0; i<sibling_count; i+=1;){
			var sibling = animator_siblings[| i];
			show_debug_message("child id: " + string(sibling.id));
			show_debug_message("vs current animator id: " + string(clone_inst.id));
			show_debug_message("comparison: " + string(sibling == clone_inst));
			if(sibling == real(clone_inst.id)){
				
				show_debug_message("removing animator from children array")
				ds_list_delete(animator_siblings, i);
			}
		}
		show_debug_message("animator siblings after removal: " + string(ds_list_size(animator_inst.parent.children)));
		show_debug_message(".");
	}
}