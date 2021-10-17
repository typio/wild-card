/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var move = key_right - key_left;

horizontalSPD = move * walkSP;

verticalSPD = verticalSPD + grv;

if (place_meeting(x, y+1, obj_wall)) && (key_jump)
{
	verticalSPD = -7;
}

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
