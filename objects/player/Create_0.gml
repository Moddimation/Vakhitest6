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

instance_create_layer(0, 0, "Instances", DebugSwitch);