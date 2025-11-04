function Player_HurtKr() {
	if (!global.hope_shield_used){
		global.hope_shield_used = true;
	}
	else {
    if (global.kr) battle.damage = 1;
    return;
}
}