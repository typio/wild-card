/// @description Insert description here
// You can write your code in this editor
if (++batAgression >= batAgressionCheckDuration) {
	batAgression = 0;
	//if (instance_exists(Object_Player) && (point_distance(x, y, Object_Player.x, Object_Player.y) <= batAgressionRadius)) {
	//	move_towards_point(Object_Player.x, Object_Player.y, batSpeed);
	//}
	if (instance_exists(obj_Cowboy) && (point_distance(x, y, obj_Cowboy.x, obj_Cowboy.y) <= batAgressionRadius)) {
		move_towards_point(obj_Cowboy.x, obj_Cowboy.y, batSpeed);
	}
}
if (batHealth <= 0) 
	instance_destroy()