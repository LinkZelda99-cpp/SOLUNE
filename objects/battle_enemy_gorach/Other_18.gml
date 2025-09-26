if (Battle_GetMenuChoiceButton() == 0 or Battle_GetMenuChoiceButton() == 1 or Battle_GetMenuChoiceButton() == 2 or Battle_GetMenuChoiceButton() == 3){
	switch Battle_GetTurnNumber(){
		case 0:
            instance_create_depth(0,0,0,turn_gorach_start)
			break
		case 1:
		    instance_create_depth(0,0,0,turn_gorach_1)
			break
		case 2:
		    instance_create_depth(0,0,0,turn_gorach_2)
			break
		case 3:
		    instance_create_depth(0,0,0,turn_gorach_3)
			break
		case 4:
		    instance_create_depth(0,0,0,turn_gorach_4)
			break
		case 5:
		    instance_create_depth(0,0,0,turn_gorach_5)
			break
		case 6:
		    instance_create_depth(0,0,0,turn_gorach_6)
			break
		case 7:
		    instance_create_depth(0,0,0,turn_gorach_7)
			break
		case 8:
		    instance_create_depth(0,0,0,turn_gorach_8)
			break
		case 9:
		    instance_create_depth(0,0,0,turn_gorach_2)
			break
		case 10:
		    instance_create_depth(0,0,0,turn_gorach_10)
			break
	}
} /*else if (Battle_GetMenuChoiceButton() == 1 or Battle_GetMenuChoiceButton() == 2 or Battle_GetMenuChoiceButton() == 3)
    Battle_SetNextState(0) 
