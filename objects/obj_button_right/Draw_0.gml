
if(os_type!=os_android) instance_destroy();
key = virtual_key_add(bbox_left, bbox_top, bbox_right - bbox_left, bbox_bottom - bbox_top, vk_right);
draw_self();

image_xscale=2;
image_yscale=2;
image_speed = 0;
image_index = 7;
image_alpha = 100;
if(os_type!=os_android) instance_destroy();