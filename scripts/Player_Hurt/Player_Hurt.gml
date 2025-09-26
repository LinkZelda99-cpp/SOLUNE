function Player_Hurt(damage) {
	if (!global.hope_shield_used){
		global.hope_shield_used = true;
	}
	else if(global.hope_shield_used){
	if(damage<0){
		return Player_Heal(-damage);
	}
	if(damage>0){
		var hp=max(0,Player_GetHp()-damage);
		Player_SetHp(hp);
	}
	return true;
}
}