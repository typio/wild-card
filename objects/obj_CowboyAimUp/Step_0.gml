vspeed = obj_Game_Controller.playerVspeed
if (keyboard_check(ord("D"))) {
	hspeed = 1
}
else if (keyboard_check(ord("A"))) {
	hspeed = -1
}
else
	hspeed = 0
	
if (!keyboard_check(vk_up)) {
	instance_create_layer(x + 2, y - 2, "Instances", obj_Cowboy)
	instance_destroy()
}