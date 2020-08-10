//var card_instance_id = argument0;

var card_inst = argument0; //= instance_find(card_obj, card_instance_id)
var metadata = ds_map_create();
metadata[? "cost"] = card_inst.cost;
metadata[? "power"] = card_inst.damage;
metadata[? "face_text"] = card_inst.details;

return metadata;