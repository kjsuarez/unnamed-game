function handle_token_ttl(current_token){
	show_debug_message("starting handle-ttl for token " + string(current_token.id));
	if(!is_undefined(current_token.time_to_live)){
		show_debug_message("time_to_live is defined for" + string(current_token.id));
		if(current_token.time_to_live < 1){
			show_debug_message("cleaning up token " + string(current_token.id));
			cleanup_token(current_token);
			return true;
		}else{
			current_token.time_to_live -= 1;
			return false;
		}
	}
}