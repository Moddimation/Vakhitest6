
if(os_type!=os_android) instance_destroy();
key = virtual_key_add(bbox_left, bbox_top, bbox_right - bbox_left, bbox_bottom - bbox_top, ord("P"));
draw_self();

image_xscale=1.6;
image_yscale=1.6;
image_speed = 0;
image_index = 2;
image_alpha = 100;