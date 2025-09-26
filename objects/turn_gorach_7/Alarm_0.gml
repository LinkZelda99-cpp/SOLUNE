/// Alarm[0] — Spawn spiral bullets
var step = global.gorach_spiral_step;
var angle = (step * 20) mod 360;
var bullet_speed = 3.5;

var dx = lengthdir_x(speed, angle);
var dy = lengthdir_y(speed, angle);

var spot_x = battle_soul.x + lengthdir_x(10, angle);
var spot_y = battle_soul.y + lengthdir_y(10, angle);

var b = instance_create_depth(spot_x, spot_y, DEPTH_BATTLE.BULLET, battle_bullet);
b.hspeed = dx;
b.vspeed = dy;

global.gorach_spiral_step += 1;

// Call the next bullet if we’re not done
if (global.gorach_spiral_step < 72) alarm[0] = 2;
