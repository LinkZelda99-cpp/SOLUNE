function attack_gb_circle() {
    var bullet_count = 12;  // Number of bullets in the circle
    var bullet_speed = 4;          // Bullet speed
    var origin_x = battle_soul.x;
    var origin_y = battle_soul.y;

    for (var i = 0; i < bullet_count; i++) {
        var angle = i * (360 / bullet_count);
        var dx = lengthdir_x(bullet_speed, angle);
        var dy = lengthdir_y(bullet_speed, angle);

        var b = instance_create_depth(origin_x, origin_y, DEPTH_BATTLE.BULLET, battle_bullet_gb);
        b.hspeed = dx;
        b.vspeed = dy;
    }
}
