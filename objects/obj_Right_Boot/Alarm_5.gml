leftOrRight = irandom_range(-10,10)
if(leftOrRight < 0)
	hspeed = irandom_range(-6, -5)
else
	hspeed = irandom_range(5, 6)

moveThree += 1
if(moveThree < 2)
	alarm[5] = 0.5*room_speed
else
	moveThree = 0