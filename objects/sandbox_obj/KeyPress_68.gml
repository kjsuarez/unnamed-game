/// @description Insert description here
show_debug_message("attempt to retrieve test data:")

if(file_exists(file_name)){
	var metadata = load_json(file_name)
}
else{
	show_error("KEVIN ERROR missing file" + file_name, true);
}
