/// @description Insert description here
// You can write your code in this editor

if (obj_player.dir_shot == 1) direction = 0;
if (obj_player.dir_shot == 2) direction = 45;
if (obj_player.dir_shot == 3) direction = 90;
if (obj_player.dir_shot == 4) direction = 135;
if (obj_player.dir_shot == 5) direction = 180;
if (obj_player.dir_shot == 6) direction = 225;
if (obj_player.dir_shot == 7) direction = 270;
if (obj_player.dir_shot == 8) direction = 315;
direction += random_range (-3,3);
speed = 70;
show_debug_message(direction)
image_angle = direction;