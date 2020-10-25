/// @description Insert description here
draw_self();

if(variable_instance_exists(self, "node_data")){
	draw_text(x, y, node_data[? "name"]);
}
