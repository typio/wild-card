vspeed = obj_Game_Controller.playerVspeed
if (keyboard_check(ord("D"))) {
	hspeed = 1
}
else if (keyboard_check(ord("A"))) {
	hspeed = -1
}
else
	hspeed = 0