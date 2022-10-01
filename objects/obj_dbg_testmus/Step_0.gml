if(keyboard_check_pressed(vk_left)) playsnd--;
if(keyboard_check_pressed(vk_right)) playsnd++;
if(plysnd!=playsnd){
	global.msg[0]="* "+string(playsnd);
	instance_destroy(wowie);
	createtext();
}
plysnd=playsnd;
function createtext(){
	wowie=instance_create_layer(x, y, "Instances", obj_textwriter, {
		textmessage : global.msg,
		textstatic : true,
		textsize : 3
	});
}
plysnd=playsnd;