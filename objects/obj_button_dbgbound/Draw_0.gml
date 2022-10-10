x = 400+camera_get_view_x(view_camera[0]);
y = 70+camera_get_view_y(view_camera[0]);
if(global.debug) {
	key = virtual_key_add(bbox_left, bbox_top, bbox_right - bbox_left, bbox_bottom - bbox_top, ord("K"));
	if(instance_exists(obj_player)) draw_self();
}