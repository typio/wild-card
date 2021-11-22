vspeed = obj_Game_Controller.playerVspeed


if (place_meeting(x + sign(hspeed) + hspeed,y,obj_wall))
{
	x = x - hspeed
}

//Vertical Collision
if (place_meeting(x, y+vspeed, obj_wall))
{
	while (!place_meeting(x, y+sign(vspeed), obj_wall))
	{
		y = y + sign(vspeed);
	}
	vspeed = 0
	obj_Game_Controller.playerVspeed = 0;
}

if (keyboard_check(ord("D"))) {
	hspeed = 3
}
else if (keyboard_check(ord("A"))) {
	hspeed = -3
}
else
	hspeed = 0
	
	
if (!keyboard_check(vk_up)) {
	instance_create_layer(x + 2, y - 2, "Instances", obj_Cowboy)
	instance_destroy()
}
else if (keyboard_check(vk_right)) {
	image_xscale = 1
}
else if (keyboard_check(vk_left)) {
	image_xscale = -1
}
else {
	image_xscale = 1
	instance_create_layer(x + 2, y - 2, "Instances", obj_Cowboy)
	instance_destroy()
}