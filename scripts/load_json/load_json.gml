function load_json(argument0) {
    var filename = argument0;
	var buffer = buffer_load(filename);
	var str = buffer_read(buffer, buffer_string);
	buffer_delete(buffer);

	show_debug_message("json returned from file: ")
	show_debug_message(str);
	var hash = json_decode(str);

	return hash;
}
