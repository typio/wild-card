vspeed = 1
hspeed = 0
if (keyboard_check(vk_right)) {
	image_xscale = 1
	instance_create_layer(x,y,"layer_bullet",obj_bullet);
}
else if (keyboard_check(vk_left)) {
	image_xscale = -1
	instance_create_layer(x,y,"layer_bullet",obj_bullet);
}