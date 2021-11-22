//Shoot Spur Rowel
rowelsShot = rowelsShot + 1
instance_create_layer(x - 5, y + 10, "layer_bullet", obj_SpurRowel);
if(rowelsShot < 3) {
	alarm[2] = 1*room_speed
}
else {
	rowelsShot = 0
	attackType = 4
}