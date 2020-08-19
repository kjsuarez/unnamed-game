function enemy_attack() {
	var token_count = instance_number(token_obj);
	if(token_count > 0){
		var token_inst = instance_find(token_obj, token_count - 1);
		instance_destroy(token_inst);
		token_set_obj.token_counter -= 1;
	}else{
		var choices = ds_list_create();
		choices[| 0] = "logos";
		choices[| 1] = "pathos";
		ds_list_shuffle(choices);

		switch (choices[| 0]){
		    case "logos":
		        player_obj.logos_health += 3;
		        break;
		    case "pathos":
		        player_obj.pathos_health += 3;
		        break;
		}

	}
	
}
