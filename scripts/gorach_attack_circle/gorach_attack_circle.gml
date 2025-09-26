function gorach_attack_circle() {
    var bullet_count = 6;   // Number of bullets
    var bullet_speed = 2;           // Bullet speed
    var radius = 100;        // Distance from the soul where bullets spawn
    var origin_x = battle_soul.x;
    var origin_y = battle_soul.y;

    for (var i = 0; i < bullet_count; i++) {
        var angle = i * (360 / bullet_count);

        // Spawn bullet at circle edge, radius away from soul
        var spawn_x = origin_x + lengthdir_x(radius, angle);
        var spawn_y = origin_y + lengthdir_y(radius, angle);

        // Create bullet instance
        var b = instance_create_depth(spawn_x, spawn_y, DEPTH_BATTLE.BULLET, battle_bullet_gorach);

        // Direction from bullet spawn point toward soul (center)
        var dir_to_center = point_direction(spawn_x, spawn_y, origin_x, origin_y);

        // Set velocity to move bullet inward toward soul
        b.hspeed = lengthdir_x(bullet_speed, dir_to_center);
        b.vspeed = lengthdir_y(bullet_speed, dir_to_center);
    }
}

