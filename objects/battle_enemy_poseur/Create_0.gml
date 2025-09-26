// Inherit the parent event
event_inherited();

depth=DEPTH_BATTLE.ENEMY;
_enemy_slot=-1;
//just hp of your enemy\/
_hp_max = 999
_hp = _hp_max
//if you want that your enemy will dodge set true\/
miss = true
//enemy start position\/
xpos = 320
ypos = 120
//delete if you don't want grid background\/
instance_create_depth(0, 0, 0, grid_background)
//delete if you don't want the light in the bottom\/
light = instance_create_depth(320, 480, 0, obj_tx);
light.image_blend = c_yellow
audio_play_sound(mus_isolated, 1, true)