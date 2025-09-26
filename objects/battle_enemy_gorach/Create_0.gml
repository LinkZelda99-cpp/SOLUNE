// Inherit the parent event
event_inherited();
depth=DEPTH_BATTLE.ENEMY;
_enemy_slot=-1;
//just hp of your enemy\/
_hp_max = 30
_hp = _hp_max
//if you want that your enemy will dodge set true\/
miss = false
//enemy start position\/
xpos = 255
ypos = 80
global.kr = 0;
//delete if you don't want grid background\/
instance_create_depth(0, 0, 0, grid_background)
global.currant_song = mus_battle_theme;
audio_play_sound(global.currant_song, 1, true)