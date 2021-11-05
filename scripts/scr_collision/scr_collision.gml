// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision(){
	//Horizontal Collision
if (place_meeting(x+horizontalSPD,y,obj_wall))
{
	while (!place_meeting(x+sign(horizontalSPD), y, obj_wall))
	{
		x = x + sign(horizontalSPD);
	}
	horizontalSPD = 0;
}

x = x + horizontalSPD;

//Vertical Collision
if (place_meeting(x,y+verticalSPD,obj_wall))
{
	while (!place_meeting(x, y+sign(verticalSPD), obj_wall))
	{
		y = y + sign(verticalSPD);
	}
	verticalSPD = 0;
}
y = y + verticalSPD;
}