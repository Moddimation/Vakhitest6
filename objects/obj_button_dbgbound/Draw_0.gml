
if(os_type!=os_android) instance_destroy();
if(!instance_exists(player)) instance_deactivate_object(object_index);
else instance_activate_object(object_index);
key = virtual_key_add(bbox_left, bbox_top, bbox_right - bbox_left, bbox_bottom - bbox_top, ord("K"));
draw_self();

image_xscale=1.6;
image_yscale=1.6;
image_speed = 0;
image_index = 3;
image_alpha = 100;