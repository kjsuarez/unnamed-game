function shuffle_discard_in() {
	var discard_size = ds_list_size(deck_obj.discard);

	for (var i = 0; i < discard_size; i += 1){
		ds_list_insert(deck_obj.deck_array, i, deck_obj.discard[| i]);
	}
	ds_list_shuffle(deck_obj.deck_array);
	ds_list_clear(deck_obj.discard);


}
