//if (vspeed == 0 && obj_Game_Controller.jumping == 0) {
//	obj_Game_Controller.jumping = 1
//	vspeed = -2
//	obj_Game_Controller.playerVspeed = -2
//	obj_Game_Controller.alarm[0] = room_speed * 0.5
//}

if (place_meeting(x, y+1, obj_wall)) {
			obj_Game_Controller.playerVspeed = -15
}