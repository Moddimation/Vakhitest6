/// @description Insert description here
// You can write your code in this editor c_lime, c_green, c_green, 1);
walkspeed = 4;
global.menum=room;
image_speed = walkspeed/16;
collspeed=walkspeed*2;
blockinput=false; blockmoving=false;
var plscale=3.9;
image_xscale = plscale;
image_yscale = plscale;

if(global.debug) instance_create_layer(0, 0, "Instances", DebugSwitch);
isAndroid = os_type==os_android;
if(!isAndroid){
	andrbutt_enter = instance_create_depth(0, 0, -100, obj_button_enter);
	andrbutt_back = instance_create_depth(0, 0, -100, obj_button_back);
	andrbutt_left = instance_create_depth(0, 0, -100, obj_button_left);
	andrbutt_right = instance_create_depth(0, 0, -100, obj_button_right);
	andrbutt_up = instance_create_depth(0, 0, -100, obj_button_up);
	andrbutt_down = instance_create_depth(0, 0, -100, obj_button_down);
	if(global.debug) andrbutt_dbg = instance_create_depth(0, 0, -100, obj_button_debug);
	if(global.debug) andrbutt_dbgbound = instance_create_depth(0, 0, -100, obj_button_dbgbound);
}