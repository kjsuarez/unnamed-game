function save_json_to_file(file_name, string_to_save){
	show_debug_message(string_to_save);
	
	var buffer = buffer_create(string_byte_length( string_to_save)+1, buffer_fixed, 1 );
	buffer_write(buffer, buffer_string, string_to_save);
	buffer_save(buffer, file_name);
	buffer_delete(buffer);
	
}