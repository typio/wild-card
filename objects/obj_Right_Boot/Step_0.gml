//Left Right Collision 

//kick
if(attackType == 1) {
	hspeed = 0
	canDamage = 1
	vspeed = 7
	if(y < obj_Cowboy.y + 8 && obj_Cowboy.y - 8 < y) {
		vspeed = 0
		hspeed = 15*sign(obj_Cowboy.x - x)
		attackType = 6
		if(hspeed == -15) {
			image_xscale = 1
		}
	}
}

//shoot 3 rowels
if(attackType == 2) {
	canDamage = 1
	hspeed = 0
	image_angle += 1
	if(image_angle == 45) {
		attackType = 0
		alarm[2] = 1*room_speed
	}
}

//three quick stomps
if(attackType == 3) {
	canDamage = 1
	if(stompPhase == 0) {
		hspeed = 0
		cowboyX = obj_Cowboy.x
		cowboyY = obj_Cowboy.y
		move_towards_point(obj_Cowboy.x, obj_Cowboy.y - 200, returnSpeed)
		if(x < cowboyX + 10 && x > cowboyX - 10 && y < cowboyY -190 && y > cowboyY - 210) {
			hspeed = 0
			vspeed = 0
			stompPhase = 1
		}
	}
	if(stompPhase == 1) {
		vspeed = 15
		stomps += 1
		stompPhase = 4 //temp phase
	}
	
}

//return to original position
if(attackType == 4) {
	canDamage = 0
	if(image_angle != 0) {
		image_angle -= 1
	}
	if(x < ogX + 10 && x > ogX - 10 && y < ogY + 10 && y > ogY - 10 && image_angle == 0) {
		hspeed = 0
		vspeed = 0
		image_xscale = -1
		attackType = 0
		//alarm[5] = room_speed * 0.5		//random horizontal movement
		alarm[0] = room_speed * 3		//choose next attac
	}
}

if(attackType == 0) {
	attackType = 5
	alarm[5] = room_speed * 0.5		//choose next attac
}