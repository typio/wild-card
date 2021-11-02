/// @description Insert description here
// You can write your code in this editor

//dir_shot
/*
1 is RIGHT
2 is TOP-RIGHT
3 is UP
4 is TOP-LEFT
5 is LEFT
6 is BOTTOM-LEFT
7 is DOWN
8 is BOTTOM-RIGHT
*/

if (obj_player.dir_shot == 1) direction = 0;
if (obj_player.dir_shot == 2) direction = 45
if (obj_player.dir_shot == 3) direction = 90;
if (obj_player.dir_shot == 4) direction = 135;
if (obj_player.dir_shot == 5) direction = 180;
if (obj_player.dir_shot == 6) direction = 225;
if (obj_player.dir_shot == 7) direction = 270;
if (obj_player.dir_shot == 8) direction = 315;
direction = + random_range (-4,4);
speed = 32;

image_angle = direction;