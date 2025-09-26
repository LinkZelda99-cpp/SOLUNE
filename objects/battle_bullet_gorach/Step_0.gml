if (place_meeting(x, y, battle_soul)) {
	if(!global.hope_shield_used) {
		global.hope_shield_used = true;
	}
else{
    Battle_CallSoulEventBulletCollision();
}

if (place_meeting(x, y, battle_soul_yellow_bullet) && type == 4) {
    var obj = instance_place(x, y, battle_soul_yellow_bullet);
    instance_destroy(obj);
    instance_destroy();
}
}