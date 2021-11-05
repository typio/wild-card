/// @description Insert description here
// You can write your code in this editor

if (!in_pos) {
	if (obj_LevelSelectCowboy.x < positions[level_at][0])
		obj_LevelSelectCowboy.x += 10
	if (obj_LevelSelectCowboy.x > positions[level_at][0])
		obj_LevelSelectCowboy.x -= 10
		
	if (obj_LevelSelectCowboy.y < positions[level_at][1])
		obj_LevelSelectCowboy.y += 10
	if (obj_LevelSelectCowboy.y > positions[level_at][1])
		obj_LevelSelectCowboy.y -= 10
}

if (obj_LevelSelectCowboy.x == positions[level_at][0] && obj_LevelSelectCowboy.y == positions[level_at][1]) {
	in_pos = true;	
}

// move towards clock tower

if (level_at == 3 && last_level_at == 2 && in_pos) {
	in_pos = false;
	last_level_at = 3;
	level_at = 4;	
}

if (level_at == 4 && last_level_at == 3 && in_pos) {
	in_pos = false;
	last_level_at = 4;
	level_at = 5;	
}

if (level_at == 5 && last_level_at == 4 && in_pos) {
	in_pos = false;
	last_level_at = 5;
	level_at = 6;	
}

// move away from clock tower

if (level_at == 5 && last_level_at == 6 && in_pos) {
	in_pos = false;
	last_level_at = 5;
	level_at = 4;	
}

if (level_at == 4 && last_level_at == 5 && in_pos) {
	in_pos = false;
	last_level_at = 4;
	level_at = 3;	
}

if (level_at == 3 && last_level_at == 4 && in_pos) {
	in_pos = false;
	last_level_at = 3;
	level_at = 2;	
}

