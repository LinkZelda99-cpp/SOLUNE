Battle_SetEnemySpareable(battle_enemy_shadekin, true);
if Battle_GetMenuChoiceEnemy() == 0{
switch Battle_GetMenu()
{
   case (1 << 0):
        var inst = instance_create_depth(0, 0, 0, battle_menu_fight_hp_bar)
        inst.enemy_slot = _enemy_slot
        inst.hp_max = _hp_max
        inst.hp = _hp
        break
    case (4 << 0):
	    if miss = false{
        dmg = Battle_GetMenuFightDamage()
		} else{
			dmg = -1
		}
        var hp_orig = _hp
        _hp = ((_hp - dmg) >= 0 ? (_hp - dmg) : 0)
        inst = instance_create_depth(x, (ypos - 50), 0, battle_damage)
        inst.damage = dmg
        inst.bar_hp_max = _hp_max
        inst.bar_hp_original = hp_orig
        inst.bar_hp_target = _hp
        if (dmg > 0)
        {
      notfight = 0
            audio_play_sound(snd_damage, 0, false)
            var shake = instance_create_depth(0, 0, 0, shaker)
            shake.target = id
            shake.var_name = "x"
            shake.shake_distance = 15
            shake.shake_decrease = 3
            shake.shake_speed = 2
        }
        else
            notfight = 1
        break
}

if miss = true{
if(Battle_GetMenu() = BATTLE_MENU.FIGHT_ANIM){
    if(Battle_GetTurnNumber() < 14){
        if!(Battle_GetMenuFightDamage() = 0){
            if(Battle_GetMenuFightDamage() > 0){
                Anim_Create(self,"xpos",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,xpos,100,20);
                Anim_Create(self,"xpos",ANIM_TWEEN.QUAD,ANIM_EASE.IN_OUT,xpos+100,-100,20,100);
            }
            else{
                Battle_SetNextState(BATTLE_STATE.TURN_PREPARATION);
            }
        }
    }
}
}
}
