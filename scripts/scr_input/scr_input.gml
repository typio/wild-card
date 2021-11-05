// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_input(){
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

key_jump = keyboard_check_pressed(ord("W"));
key_shift = keyboard_check_pressed(vk_lshift);

//Direction aimming

aim_right = keyboard_check(vk_right);									//1
aim_right_top = keyboard_check(vk_right) && keyboard_check(vk_up);		//2
aim_top = keyboard_check(vk_up);										//3
aim_left_top = keyboard_check(vk_left) && keyboard_check(vk_up);		//4
aim_left = keyboard_check(vk_left);										//5
aim_left_bottom = keyboard_check(vk_left) && keyboard_check(vk_down);	//6
aim_down = keyboard_check(vk_down);										//7
aim_right_bottom = keyboard_check(vk_right) && keyboard_check(vk_down);	//8
//show_debug_message(state)




//DIAGNALS
if(aim_right_top)
{
	dir_shot = 2;
}
else if(aim_left_top)
{
	dir_shot = 4
}
else if(aim_left_bottom)
{
	dir_shot = 6;
}
else if(aim_right_bottom)
{
	dir_shot = 8;
}


//STRAIGHT's
else if(aim_right)
{
	dir_shot = 1;
}
else if(aim_top)
{
	dir_shot = 3;
}
else if(aim_left)
{
	dir_shot = 5;
}
else if(aim_down)
{
	dir_shot = 7;
}



if (keyboard_check(vk_space)) && (cooldown <= 0)
{
	instance_create_layer(x,y,"layer_bullet",obj_bullet);
	cooldown = 15;
}
cooldown = cooldown - 1;

//Calculate Movement
var move = key_right - key_left;

horizontalSPD = move * walkSPD

verticalSPD = verticalSPD + grv;

if state == "move"
{
	//Walking Movement
	if key_right
	{
		sprite_index = spr_player_running
		image_xscale = 1; //flips sprite to look left
		image_yscale = 2;
		image_speed = 0.3
		horizontalSPD = move * walkSPD
	}

	if key_left
	{
		sprite_index = spr_player_running
		image_xscale = -1; //flips sprite to look left
		image_yscale = 2;
		image_speed = 0.3
		horizontalSPD = move * walkSPD
	}

	//Idle Animation
	if not key_right and not key_left
	{
		sprite_index = spr_player
		image_speed = 0.3
	}
	
	if key_shift
	{
		state = "roll"
	}
	if key_jump
	{
		state = "jump"
	}
}

//Rolling
//[BUG] Incosistant, but sometimes when rolling it starts a frame and ends it instantly
	if state == "roll"
	{
		sprite_index = spr_player_rolling;
		image_speed = 0.4
	}


	//Jumping Movement
	if state == "jump"
	{
		if (place_meeting(x, y+1, obj_wall)) && (key_jump)
		{
			verticalSPD = -13;
			sprite_index = spr_player_jumping;
		}
	}
}