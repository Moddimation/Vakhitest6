if(keyboard_check_pressed(vk_left)) playsnd--;
if(keyboard_check_pressed(vk_right)) playsnd++;
if(plysnd!=playsnd){
	global.msg[0]="* "+string(playsnd-1);
	instance_destroy(wowie);
	createtext();
}
plysnd=playsnd;
function createtext(){
	wowie=instance_create_layer(x, y, "Instances", obj_textwriter, {
		textmessage : global.msg,
		textstatic : false,
		maxlineno : 2,
		maxlinepos : 420,
		timeoff : 1,
		textsize : 2,
		txt_snd : playsnd
	});
}
plysnd=playsnd;