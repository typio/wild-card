/// @description Insert description here
// You can write your code in this editor
if (++snakeAgression >= snakeAgressionCheckDuration) {
	snakeAgression = 0;
	if (instance_exists(Object_Player) && (point_distance(x, y, Object_Player.x, Object_Player.y) <= snakeAgressionRadius)) {
		y = y + yspeed;
		if (self.y <= room_height - 300) {
			yspeed = 10;
		}
		if (self.y >= room_height - 32) {
			yspeed = -10;
		}
	}
	else {
		y = y + yspeed;
		if (self.y <= room_height - 300) {
			yspeed = 10;
		}
		if (self.y >= room_height - 32) {
			yspeed = 0;
		}
	}
}