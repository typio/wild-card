/// @description Insert description here
// You can write your code in this editor
//if (++bottleAgression >= bottleAgressionCheckDuration) {
//	bottleAgression = 0;
//	if (instance_exists(Object_Player) && (point_distance(x, y, Object_Player.x, Object_Player.y) <= bottleAggressionRadius)) {
//		move_towards_point(x, y - 10, bottleSpeed);
//		timePassed += 1;
//		if (timePassed == 20) {
//			move_towards_point(Object_Player.x, Object_Player.y, bottleSpeed);
//			if (timePassed >= 21) {
//				
//			}
//		}
//	}
//}
if (++bottleAgression >= bottleAgressionCheckDuration) {
	bottleAgression = 0;
	if (instance_exists(obj_Cowboy) && (point_distance(x, y, obj_Cowboy.x, obj_Cowboy.y) <= bottleAggressionRadius)) {
		move_towards_point(x, y - 10, bottleSpeed);
		timePassed += 1;
		if (timePassed == 20) {
			move_towards_point(obj_Cowboy.x, obj_Cowboy.y, bottleSpeed);
			if (timePassed >= 21) {
				
			}
		}
	}
}
if(bottleHealth <= 0)
	instance_destroy()