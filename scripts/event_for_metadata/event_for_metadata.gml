// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function event_for_metadata(event_metadata, choices_arry){
	var event_inst = instance_create_depth(500, 254, 11, event_obj);
	with(event_inst){
		image_xscale = 3;
		image_yscale = 3;
		event_text = event_metadata[? "event_text"];
		choices = choices_arry;
		
		if(event_metadata[? "no_step"] == true){
			no_step = true;
		}
	}
}