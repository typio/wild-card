/// @description Insert description here
// You can write your code in this editor
if (++bullAgression >= bullAgressionCheckDuration) {
	bullAgression = 0;
	bullXSpeed = x;
	if (instance_exists(Object_Player) && (point_distance(x, y, Object_Player.x, Object_Player.y) <= bullAgressionRadius)) {
		bullXSpeed = x - bullXVelocity;
	}
	x = bullXSpeed;
}