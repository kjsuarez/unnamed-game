/// @description complete/close speech bubble
if(text_display_counter < string_length(text_body)){
	text_display_counter = string_length(text_body)
} else if(question == 0) {
	cleanup_speech_bubble(self);	
}

