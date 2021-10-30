/// @description Insert description here
// You can write your code in this editor

if (level_at == 1 && in_pos) {
	level_at = 2;
	last_level_at = 1;
	in_pos = false;
}

if (level_at == 2 && in_pos) {
	level_at = 3;
	last_level_at = 2;
	in_pos = false;
}