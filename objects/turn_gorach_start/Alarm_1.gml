var i = 1; // Change this to 1, 2, 3, etc. for each alarm
var pitch = global.piano_note_pitch[i];
var height = global.piano_note_height[i];

var spot_x = 40 + (pitch - 60) * 6;
var b = instance_create_depth(spot_x, 380, -100, battle_bullet_piano);
b.bullet_height = height;
b.vspeed = -4;
