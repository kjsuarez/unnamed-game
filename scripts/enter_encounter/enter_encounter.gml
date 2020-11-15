// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enter_encounter(opponent_object){
	room_instance_add(base_encounter_room, global.opponent_coor[0], global.opponent_coor[1], opponent_object);
	room_instance_add(base_encounter_room, 128, 704, player_obj);
	room_goto(base_encounter_room);
}