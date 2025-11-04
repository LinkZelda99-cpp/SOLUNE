function gorach_silence(){
 var count = 12;
    var radius = 120;
    var duration = 30;
    var turn_time = 15;

    var px = battle_soul.x;
    var py = battle_soul.y;

    var start_angle = random(360); // rotate the whole ring randomly

    for (var i = 0; i < count; i++) {
        var angle = start_angle + i * (360 / count);
        var x_spot = px + lengthdir_x(radius, angle);
        var y_spot = py + lengthdir_y(radius, angle);

        var angle_target = point_direction(x_spot, y_spot, px, py);

        var pause = 10 + i * 2; // staggering like Sans

        Battle_MakeGB(
            x, y,
            px, py,
            angle, angle_target,
            1, 1,
            0,         // Gaster Blaster type (0 = normal)
            pause,     // pause before firing
            duration,  // beam duration
            turn_time  // time to rotate into position
        );
    }
}