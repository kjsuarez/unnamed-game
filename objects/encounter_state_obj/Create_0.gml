/// @description Insert description here
/* phases: [ 
	"player_statuses", 
	"player_tokens", 
	"player", 
	"opponent_statuses", 
	"opponent_tokens", 
	"opponent",
	"resolve_opponent_attack"
]
*/

phases = ds_list_create();
ds_list_add(phases, "player_statuses");
ds_list_add(phases, "player_tokens");
ds_list_add(phases, "player");
ds_list_add(phases, "opponent_statuses");
ds_list_add(phases, "opponent_tokens");
ds_list_add(phases, "opponent");
ds_list_add(phases, "resolve_opponent_attack");

combat_starting = false;
virgin = true;
alternative_victor = false;

global.turn = false; //"player"
global.turn_number = 0;

win_event = global.current_win_event;
lose_event = global.current_lose_event;