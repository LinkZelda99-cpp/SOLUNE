if (!global.hope_shield_used) {
	var dmg = 0;
	global.hope_shield_used = true;
}
else {
	var dmg = 2;
if (global.kr == 1) {
    switch (type) {
        case 0:
            Player_HurtKr();
            break;
        case 1:
            if (global.moving) {
                Player_HurtKr();
            }
            break;
        case 2:
            if (!global.moving) {
                Player_HurtKr();
            }
            break;
        case 3:
            Player_Heal(1);
            break;
        case 4:
            Player_HurtKr();
            break;
    }
} else if (global.kr == 0) {
    switch (type) {
        case 0:
            Battle_CallSoulEventHurt();
            Player_Hurt(dmg);
            break;
        case 1:
            if (global.moving) {
                Battle_CallSoulEventHurt();
                Player_Hurt(dmg);
            }
            break;
        case 2:
            if (!global.moving) {
                Battle_CallSoulEventHurt();
                Player_Hurt(dmg);
            }
            break;
        case 3:
            Player_Heal(1);
            break;
        case 4:
            Battle_CallSoulEventHurt();
            Player_Hurt(dmg);
            break;
    }
}
}
if (disposable) {
    instance_destroy();
}
