walkspeed = 4;
global.menum=room;
image_speed = walkspeed/16;
collspeed=6;
blockinput=false; blockmoving=false;
var plscale=3.9;
image_xscale = plscale;
image_yscale = plscale;
facing=0;
isdir[1]= 0;

if(global.debug) instance_create_layer(0, 0, "Instances", DebugSwitch);
isAndroid = os_type==os_android;
if(isAndroid){
	andrbutt_enter = instance_create_depth(0, 0, -100, obj_button_enter);
	andrbutt_back = instance_create_depth(0, 0, -100, obj_button_back);
	andrbutt_left = instance_create_depth(0, 0, -100, obj_button_left);
	andrbutt_right = instance_create_depth(0, 0, -100, obj_button_right);
	andrbutt_up = instance_create_depth(0, 0, -100, obj_button_up);
	andrbutt_down = instance_create_depth(0, 0, -100, obj_button_down);
	if(global.debug) andrbutt_dbg = instance_create_depth(0, 0, -100, obj_button_debug);
	if(global.debug) andrbutt_dbgbound = instance_create_depth(0, 0, -100, obj_button_dbgbound);
	if(global.debug) andrbutt_dbgmode = instance_create_depth(0, 0, -100, obj_button_debugmode);
}

function walkup(){
		if(place_free(x, y-collspeed)){ 
			y-=walkspeed;
			if(facing==0 or facing==2 or not isdir[facing]) facing=1;
			isdir[1]=true;
		}
		else image_speed=0;
}
function walkdown(){
		if(place_free(x, y+collspeed)){ 
			y+=walkspeed;
			if(facing==0 or facing==1 or not isdir[facing]) facing=2;
			isdir[2]=true;
		}
		else image_speed=0;
}
function walkleft(){
		if(place_free(x-collspeed, y)){ 
			x-=walkspeed;
			if(facing==0 or facing==4 or not isdir[facing]) facing=3;
			isdir[3]=true;
		}
		else image_speed=0;
}
function walkright(){
		if(place_free(x+collspeed, y)){ 
			x+=walkspeed;
			if(facing==0 or facing==3 or not isdir[facing]) facing=4;
			isdir[4]=true;
		}
		else image_speed=0;
}
function walkbackup(){
		if(!place_free(x, y-collspeed)){ 
			y+=walkspeed;
			image_speed=0;
		}
}
function walkbackdown(){
		if(!place_free(x, y+collspeed)){ 
			y-=walkspeed;
			image_speed=0;
		}
}
function walkbackleft(){
		if(!place_free(x-collspeed, y)){ 
			x+=walkspeed;
			image_speed=0;
		}
}
function walkbackright(){
		if(!place_free(x+collspeed, y)){ 
			x-=walkspeed;
			image_speed=0;
		}
}