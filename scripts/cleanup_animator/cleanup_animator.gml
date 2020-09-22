function cleanup_animator(animator){
	if(animator.parent != false){
		child_arry = animator.parent.children;
		for(i=0; i<ds_list_size(child_arry); i+=1;){
			if(child_arry[| i] == animator){
				ds_list_delete(child_arry, i);
			}
		}
	}
	instance_destroy(self);
}