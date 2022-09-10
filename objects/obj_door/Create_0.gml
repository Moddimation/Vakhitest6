roomchange=false;
walkoffset=35;
if(instance_number(obj_door)>instance_number(obj_doorpath)){
	switch(image_angle){
	case 90:
		instance_create_layer(x, y-walkoffset, "Instances", obj_doorpath, { //UP
			image_angle : 0
		});
		break;
	case -90:
		instance_create_layer(x, y+walkoffset, "Instances", obj_doorpath, { //DOWN
			image_angle : 180
		});
		break;
	case 180:
		instance_create_layer(x-walkoffset, y, "Instances", obj_doorpath, { //LEFT
			image_angle : 90
		});
		break;
	default:
		instance_create_layer(x+walkoffset, y, "Instances", obj_doorpath, {
			image_angle : -90
		});
	}
}