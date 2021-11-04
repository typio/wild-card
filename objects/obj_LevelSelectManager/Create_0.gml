/// @description Insert description here
// You can write your code in this editor

positions[0] = [490, 1250];
positions[1] = [490, 450];
positions[2] = [1460,450];
positions[3] = [1660,450];
positions[4] = [1660,770];
positions[5] = [2100,770];
positions[6] = [2100,680];
level_at = 0;
last_level_at = 0;
in_pos = true;

instance_create_layer(positions[0][0], positions[0][1], "Instances", obj_LevelSelectCowboy);