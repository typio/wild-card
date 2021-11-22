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
//y = y + verticalSPD;

if (keyboard_check(ord("D"))) {
	hspeed = 8
	image_xscale = 1
}
else if (keyboard_check(ord("A"))) {
	hspeed = -8
	image_xscale = -1
}
else {
	image_xscale = 1
	y = y - 1
	instance_create_layer(x, y - 4, "Instances", obj_Cowboy)
	instance_destroy()
}
