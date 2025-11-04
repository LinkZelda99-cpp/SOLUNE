function Battle_CallSoulEventHurt() {
	if (!global.hope_shield_used){
		global.hope_shield_used = true;
	}
	else {
	with(battle_soul){
		event_user(BATTLE_SOUL_EVENT.HURT);
	}
	return true;
}
}