 /// @description Insert description here
// You can write your code in this editor
scr_input();

scr_collision();

//SHOOTING
//These first 4 directions are UP, LEFT, DOWN, and RIght ONLY


//The next 4 directions are for DIAGONAL MOVEMENT


//Bullet spawning

//show_debug_message(dir_shot)
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

	