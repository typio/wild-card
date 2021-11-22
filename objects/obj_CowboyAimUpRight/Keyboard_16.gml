if(image_xscale == 1) 
	obj_Game_Controller.dodgeDirection = 1
else
	obj_Game_Controller.dodgeDirection = -1
instance_create_layer(x, y, "Instances", obj_Dodge)
instance_destroy()
