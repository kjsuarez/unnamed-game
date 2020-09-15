/// @description Insert description here
// phases: [ "player_statuses", "player_tokens", "player", "opponent_statuses", "opponent_tokens", "opponent"]

phases = ds_list_create();
ds_list_add(phases, "player_statuses");
ds_list_add(phases, "player_tokens");
ds_list_add(phases, "player");
ds_list_add(phases, "opponent_statuses");
ds_list_add(phases, "opponent_tokens");
ds_list_add(phases, "opponent");

global.turn = "player";