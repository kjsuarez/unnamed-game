function card_to_json(argument0) {
	//var card_instance_id = argument0;

	var card_inst = argument0; //= instance_find(card_obj, card_instance_id)
	var metadata = ds_map_create();
	metadata[? "cost"] = card_inst.cost;
	metadata[? "power"] = card_inst.damage;
	metadata[? "type"] = card_inst.type;
	metadata[? "face_text"] = card_inst.details;
	metadata[? "script"] = card_inst.script_name;
	metadata[? "script_params"] = card_inst.script_params;
	metadata[? "outro_script"] = card_inst.outro_script;
	metadata[? "cleanup_script"] = card_inst.cleanup_script;
	//metadata[? "needs_target"] = card_inst.needs_target;

	return metadata;


}
