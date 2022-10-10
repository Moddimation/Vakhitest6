x = 90+camera_get_view_x(view_camera[0]);
y = 550+camera_get_view_y(view_camera[0]);
key = virtual_key_add(bbox_left, bbox_top, bbox_right - bbox_left, bbox_bottom - bbox_top, vk_left);
if(instance_exists(obj_player)) draw_self();