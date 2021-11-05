if(obj_Game_Controller.ammo > 0 && obj_Game_Controller.reload == 0) {
	obj_Game_Controller.ammo = obj_Game_Controller.ammo - 1
	instance_create_layer(x, y, "Instances", obj_CowboyShootUp)
	instance_destroy()
}