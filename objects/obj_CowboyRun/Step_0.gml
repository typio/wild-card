vspeed = obj_Game_Controller.playerVspeed
if (keyboard_check(ord("D"))) {
	hspeed = 1
	image_xscale = 1
}
else if (keyboard_check(ord("A"))) {
	hspeed = -1
	image_xscale = -1
}
else {
	instance_create_layer(x, y - 4, "Instances", obj_Cowboy)
	instance_destroy()
}