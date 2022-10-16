if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true)&&global.spawnid==-1&&!roomchange) { roomchange=true; 
	fadethis = instance_create_depth(0, 0, -200, obj_fade, {
		fade_type : 2,
		fade_colid : 1,
		fade_speed : 0.04
	})}
if(roomchange&&collision_rectangle(bbox_left-10, bbox_top-10, bbox_right+10, bbox_bottom+10, obj_player, false, true)){
	global.lastdoorid=self.doorid;
	obj_player.blockinput=true;
	obj_player.blockmoving=true;
	switch(image_angle){
		case 0: //RIGHT
			if(obj_player.x<x+walkoffset) { obj_player.x+=obj_player.walkspeed; obj_player.sprite_index = anm_plwalkright; }
			else gotoroom()
			break;
		case 180: //LEFT
			if(obj_player.x>x-walkoffset) { obj_player.x-=obj_player.walkspeed; obj_player.sprite_index = anm_plwalkleft; }
			else gotoroom()
			break;
		case -90: //DOWN
			if(obj_player.y<y+walkoffset) { obj_player.y+=obj_player.walkspeed; obj_player.sprite_index = anm_plwalkdown; }
			else gotoroom()
			break;
		case 90: //UP
			if(obj_player.y>y-walkoffset) { obj_player.y-=obj_player.walkspeed; obj_player.sprite_index = anm_plwalkup; }
			else gotoroom()
			break;
		case -180: //LEFT
			if(obj_player.x>x-walkoffset) { obj_player.x-=obj_player.walkspeed; obj_player.sprite_index = anm_plwalkleft; }
			else gotoroom()
			break;
	}
}
function gotoroom()
{
	show_debug_message("Heheheh")
	global.spawnid=spwnid;
	roomchange=false;
	obj_player.blockinput=false;
	obj_player.blockmoving=false;
//	obj_player.x=0; //REMOVE THIS LINE IF STARTPOINTS ARE DONE
	global.menum = room;
	room_goto(nextroom);
}

if(global.spawnid==doorid&&doorentering){
	obj_player.blockinput=true;
	obj_player.blockmoving=true;
	switch(image_angle){
	case 90: //UP
		if(obj_player.y<y+walkoffset*2) { obj_player.y+=obj_player.walkspeed; obj_player.sprite_index = anm_plwalkdown; }
		else {
			obj_player.blockinput=false;
			obj_player.blockmoving=false;
			global.spawnid=-1;
			doorentering=false;
		}
		break;
	case -90: //DOWN
		if(obj_player.y>y-walkoffset*3) { obj_player.y-=obj_player.walkspeed; obj_player.sprite_index = anm_plwalkup; }
		else {
			obj_player.blockinput=false;
			obj_player.blockmoving=false;
			global.spawnid=-1;
			doorentering=false;
		}
		break;
	case 180: //LEFT
		if(obj_player.x<x+walkoffset*3) { obj_player.x+=obj_player.walkspeed; obj_player.sprite_index = anm_plwalkright; }
		else {
			obj_player.blockinput=false;
			obj_player.blockmoving=false;
			global.spawnid=-1;
			doorentering=false;
		}
		break;
	case -180: //LEFT
		if(obj_player.x<x+walkoffset*3) { obj_player.x+=obj_player.walkspeed; obj_player.sprite_index = anm_plwalkright; }
		else {
			obj_player.blockinput=false;
			obj_player.blockmoving=false;
			global.spawnid=-1;
			doorentering=false;
		}
		break;
	default: //RIGHT, ETC
		if(obj_player.x>x-walkoffset*3) { obj_player.x-=obj_player.walkspeed; obj_player.sprite_index = anm_plwalkleft; }
		else {
			obj_player.blockinput=false;
			obj_player.blockmoving=false;
			global.spawnid=-1;
			doorentering=false;
		}
	}
}