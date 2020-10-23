/// @description Insert description here
draw_self();
if(variable_instance_exists(self, "damage")){
	draw_text(x-15, y-10, string(time_to_live) + "/" + string(damage));
}else{
	draw_text(x-15, y-10, time_to_live);
}
draw_text(x-15, y-30, id);

if(defender){
	draw_text(x+25, y, "defender");
}
