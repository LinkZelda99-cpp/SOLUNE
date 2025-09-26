if(Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())==_enemy_slot){ 
 
 switch(Battle_GetMenuChoiceButton()){ 
  case BATTLE_MENU_CHOICE_BUTTON.FIGHT: 
   if(_hp<=0){ 
    //Create particle effect 
    var 
inst=instance_create_depth(x,y,0,battle_death_particle); 
    inst.sprite=sprite_index; 
    audio_play_sound(snd_vaporize,0,false); 
	audio_stop_sound(global.currant_song);
    instance_destroy();
	global.gorach_beat = true;
   } 
   break; 
   
  case BATTLE_MENU_CHOICE_BUTTON.ACT: 
   switch(Battle_GetMenuChoiceAction()){ 
    case 0: 
     Dialog_Add("* Gorach - 1ATK, 1 DEF&- Loves music") 
     break; 
    case 1: 
     Dialog_Add("* Gorach seems soothed")
	 global.mercy_meter = 100;
     break; 
	/*case 2:
	Dialog_Add("* Dispite the FIGHT,&You still feel HOPE.")
	global.hope_shield_used = false;
	*/
 } 
} 
}

/*if Battle_GetMenuChoiceButton() == 1{
	if Battle_GetMenuChoiceAction() == 0{
		Dialog_Add("* Likes music - 1 ATK, 1 DEF")
	}
}
if Battle_GetMenuChoiceButton() == 1{
	if Battle_GetMenuChoiceAction() == 1{
		Dialog_Add("* Seems soothed")
	}
}
