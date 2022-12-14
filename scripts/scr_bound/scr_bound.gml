// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function objLayer_check(_offset = 0){
	static _depth = obj_player.depth
	if(instance_exists(obj_player)){
	//var _objX=(object_index.bbox_right-object_index.bbox_left)/2+object_index.bbox_left
		if(obj_player.bbox_bottom < bbox_bottom) depth=_depth-30-_offset
		else depth=_depth+30-_offset
	}
}
function objmove_time(_x, _y, _t){
	static _xres = (_x - instance_id.x) / (_t * fps);
	static _yres = (_y - instance_id.y) / (_t * fps);
	static _i = 0;
	instance_id.x += _xres;
	instance_id.y += _yres;
	_i++;
	if(_i > (_t * fps)) return true;
	//log(string(_xres)+" "+string(_i))
	//log(string(object_index.x)+" "+string(fps))
}