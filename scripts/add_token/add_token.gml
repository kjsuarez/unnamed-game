// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_token(combatant){
	switch (combatant){
		case "player":
			inst_x = token_set_obj.player_initial_token_location[0];
			inst_y = token_set_obj.player_initial_token_location[1] + (token_set_obj.y_offset * token_set_obj.player_token_counter);;
			inst_z = 0;
		
			var token_inst;
			token_inst = instance_create_depth(inst_x, inst_y, inst_z, token_obj);
			with(token_inst){
				image_xscale = token_set_obj.token_scale;
				image_yscale = token_set_obj.token_scale;
				face_text = "test: " + string(id);
				token_script_params = ds_map_create();
				owner = combatant;
			}

			token_set_obj.player_token_counter += 1;
			break;
		case "enemy":
			inst_x = token_set_obj.enemy_initial_token_location[0];
			inst_y = token_set_obj.enemy_initial_token_location[1] + (token_set_obj.y_offset * token_set_obj.enemy_token_counter);;
			inst_z = 0;
		
			var token_inst;
			token_inst = instance_create_depth(inst_x, inst_y, inst_z, token_obj);
			with(token_inst){
				image_xscale = token_set_obj.token_scale;
				image_yscale = token_set_obj.token_scale;
				face_text =  "test: " + string(id);
				token_script_params = ds_map_create();
				owner = combatant;
			}

			token_set_obj.enemy_token_counter += 1;
			break;
	}
	
}