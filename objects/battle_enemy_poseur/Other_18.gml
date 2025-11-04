if Battle_GetMenuChoiceButton() == 0{
	switch Battle_GetTurnNumber(){
		case 0:
            instance_create_depth(0,0,0,turn_start)
			break
		case 1:
		    instance_create_depth(0,0,0,turn_1)
			break
		case 2:
		    instance_create_depth(0,0,0,turn_2)
			break
	}
} else if (Battle_GetMenuChoiceButton() == 1 or Battle_GetMenuChoiceButton() == 2 or Battle_GetMenuChoiceButton() == 3)
    Battle_SetNextState(0) 
