vspeed = obj_Game_Controller.playerVspeed

if (place_meeting(x+hspeed,y,obj_wall))
{
	while (!place_meeting(x+sign(hspeed), y, obj_wall))
	{
		x = x + sign(hspeed);
	}
	hspeed = 0;
}

//x = x + hspeed;

//Vertical Collision
if (place_meeting(x,y+vspeed,obj_wall))
{
	while (!place_meeting(x, y+sign(vspeed), obj_wall))
	{
		y = y + sign(vspeed);
	}
	vspeed = 0;
	obj_Game_Controller.playerVspeed = 0;
}
//y = y + verticalSPD;
