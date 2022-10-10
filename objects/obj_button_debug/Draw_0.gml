if(room!=menu_debugmain) x = 250+camera_get_view_x(view_camera[0]);
else x=100;
y = 70+camera_get_view_y(view_camera[0]);
if(global.debug) {
	key = virtual_key_add(bbox_left, bbox_top, bbox_right - bbox_left, bbox_bottom - bbox_top, ord("P"));
	if(instance_exists(obj_player)||room==menu_debugmain) draw_self();
}