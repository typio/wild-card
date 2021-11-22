/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (++cactusAgression >= cactusAgressionCheckDuration) {
	cactusAgression = 0;
	if (instance_exists(Object_Player) && (point_distance(x, y, Object_Player.x, Object_Player.y) <= cactusAggressionRadius)) {
		instance_create_layer(self.x, self.y, "Instances", Object_Cactus_Weapon);
	}
}