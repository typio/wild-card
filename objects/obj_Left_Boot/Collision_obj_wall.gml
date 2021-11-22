if(stompPhase == 4) {
	stompPhase = 0
	if(stomps == 3) {
		stomps = 0
		attackType = 4	
	}
}
if(attackType != 3 && attackType != 5) { 
	attackType = 4
	canDamage = 0
	move_towards_point(ogX, ogY, returnSpeed)
}