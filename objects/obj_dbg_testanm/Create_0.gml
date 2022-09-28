for(i=0; sprite_exists(i); i++){
	spr_num=i;
}
ass[0] = "ASSSSSSS%";
var a=camera_get_view_height(0)/6;
var b=camera_get_view_width(0)/3;
var sprindx=0;
var sprwid=0;
for(j=0; j<round(spr_num/3); j++){
	for(i=0; i<3; i++){
		if(sprite_get_width(sprindx)>1&&sprite_get_width(sprindx)<300) instance_create_layer(b*i+(b/2),a*j+(a/2)+sprwid, "Instances", obj_dbg_testanim, {
			sprite_index : sprindx,
			image_speed : 0.5,
			image_xscale : 3,
			image_yscale : 3,
		});
		sprindx++;
		sprwid+=sprite_get_height(sprindx);
		room_height=a*j+(a/2)+sprwid+300;
	}
}
x=camera_get_view_width(0)/2;
y=camera_get_view_height(0)/2;