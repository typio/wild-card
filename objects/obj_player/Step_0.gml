 /// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

//[WIP] other rolling mechanics
//key_right_roll = keyboard_check_pressed(vk_right);
//key_left_roll = keyboard_check_pressed(vk_left);

key_jump = keyboard_check_pressed(vk_space);
key_shift = keyboard_check_pressed(vk_lshift);

show_debug_message(state)


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
}

//Rolling
//[BUG] Incosistant, but sometimes when rolling it starts the frame and ends it instantly
if state == "roll"
{
	sprite_index = spr_player_rolling;
	image_speed = 0.4
}


//Jumping Movement
if (place_meeting(x, y+1, obj_wall)) && (key_jump)
{
	verticalSPD = -13;
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

//SHOOTING
//These first 4 directions are UP, LEFT, DOWN, and RIght ONLY

if(keyboard_check(ord("W"))) //UP
{
	dir_shot = 3;
	//sprite_index = [Insert appropriate direction sprite]
}

if(keyboard_check_released(ord("W")))
{
	sprite_index = spr_player
}

if(keyboard_check(ord("A"))) //LEFT
{
	dir_shot = 5;
	//sprite_index = [Insert appropriate direction sprite]
}

if(keyboard_check_released(ord("A"))) 
{
	sprite_index = spr_player
}

if(keyboard_check(ord("S"))) //DOWN
{
	dir_shot = 7;
	//sprite_index = [Insert appropriate direction sprite]
}

if(keyboard_check_released(ord("S")))
{
	sprite_index = spr_player
}

if(keyboard_check(ord("D"))) //RIGHT
{
	dir_shot = 1;
	//sprite_index = [Insert appropriate direction sprite]
}

if(keyboard_check_released(ord("D")))
{
	sprite_index = spr_player
}


//The next 4 directions are for DIAGONAL MOVEMENT

if(keyboard_check(ord("D"))) && (keyboard_check(ord("W"))) //TOP RIGHT
{
	dir_shot = 2;
}

if(keyboard_check_released(ord("D"))) && (keyboard_check_released(ord("W")))
{
	// For directional sprite
}

if(keyboard_check(ord("D"))) && (keyboard_check(ord("S"))) //BOTTOM RIGHT
{
	dir_shot = 8;
}

if(keyboard_check_released(ord("D"))) && (keyboard_check_released(ord("S")))
{
	// For directional sprite	
}

if(keyboard_check(ord("A"))) && (keyboard_check(ord("W"))) //TOP LEFT
{
	dir_shot = 4;
}

if(keyboard_check_released(ord("A"))) && (keyboard_check_released(ord("W")))
{
	// For directional sprite	
}

if(keyboard_check(ord("A"))) && (keyboard_check(ord("S"))) //BOTTOM LEFT
{
	dir_shot = 6;
}

if(keyboard_check_released(ord("A"))) && (keyboard_check_released(ord("S")))
{
	// For directional sprite	
}

//Bullet spawning
if (keyboard_check(ord("X"))) && (cooldown <= 0)
{
	instance_create_layer(x,y,"layer_bullet",obj_bullet);
	cooldown = 3;
}

cooldown = cooldown - 1;
//RUNNING [If we make it to hard]
/*
	//Running Action [BUG]: pressing both SHIFT and RIGHT key then letting go of RIGHT key keeps running to the RIGHT (both directions)
	if keyboard_check (key_right && key_shift) and not place_meeting(x+4, y,obj_wall)
	{
		horizontalSPD = move * runSPD;
		x += 4;
		image_xscale = 1; //sets sprite to look right
		//sprite_index = [insert running sprite here]
		//image_speed = [how fast the sprite will change to the next frame]
	}

	if keyboard_check (key_left && key_shift) and not place_meeting(x-4, y,obj_wall)
	{
		horizontalSPD = move * runSPD
		x -= 4;
		image_xscale = -1; //flips sprite to look left
		//sprite_index = [insert running sprite here]
		//image_speed = [how fast the sprite will change]
	}
*/


	