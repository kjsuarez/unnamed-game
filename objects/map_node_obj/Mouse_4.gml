/// @description enter encounter

room_instance_add(base_encounter_room, global.opponent_coor[0], global.opponent_coor[1], node_data[? "object"]);
room_instance_add(base_encounter_room, 128, 704, player_obj);
room_goto(base_encounter_room);