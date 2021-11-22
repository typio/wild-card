show_debug_message("+++++++++++++++++++++++++")
nextAttack = irandom_range(0, 100)


if(obj_Boot_Controller.bossHealth < 34 && nextAttack > 66)
	attackType = 3
else if(obj_Boot_Controller.bossHealth < 66 && nextAttack > 33)
	attackType = 2
else
	attackType = 1