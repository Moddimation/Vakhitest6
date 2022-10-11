roomchange=false;
walkoffset=32;
doorentering=false;
	switch(image_angle){
	case 90: //UP
		instance_create_layer(x, y-walkoffset, "Instances", obj_doorpath, {
			image_angle : 0
		});
		if(global.spawnid==doorid){
			doorentering=true;
			obj_player.x=x;
			obj_player.y=y-walkoffset;
		}
		break;
	case -90: //DOWN
		instance_create_layer(x, y+walkoffset, "Instances", obj_doorpath, {
			image_angle : 180
		});
		if(global.spawnid==doorid){
			doorentering=true;
			obj_player.x=x;
			obj_player.y=y+walkoffset;
		}
		break;
	case 180: //LEFT
		instance_create_layer(x-walkoffset, y, "Instances", obj_doorpath, {
			image_angle : 90
		});
		if(global.spawnid==doorid){
			doorentering=true;
			obj_player.x=x-walkoffset;
			obj_player.y=y;
		}
		break;
	case -180: //LEFT
		instance_create_layer(x-walkoffset, y, "Instances", obj_doorpath, {
			image_angle : 90
		});
		if(global.spawnid==doorid){
			doorentering=true;
			obj_player.x=x-walkoffset;
			obj_player.y=y;
		}
		break;
	default: //RIGHT, ETC
		instance_create_layer(x+walkoffset, y, "Instances", obj_doorpath, {
			image_angle : -90
		});
		if(global.spawnid==doorid){
			doorentering=true;
			obj_player.x=x+walkoffset;
			obj_player.y=y;
		}
	}