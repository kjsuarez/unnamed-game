// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_animator_child(animator_parent, animator_child){
	ds_list_add(animator_parent.children, animator_child);
}