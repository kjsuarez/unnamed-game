function handle_token_ttl(current_token){
	if(!is_undefined(current_token.time_to_live)){
		if(current_token.time_to_live < 1){
			cleanup_token()(current_token);
			return true;
		}else{
			current_token.time_to_live -= 1;
			return false;
		}
	}
}