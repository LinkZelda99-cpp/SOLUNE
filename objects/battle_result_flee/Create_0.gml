global.gorach_spared = true;
audio_stop_sound(mus_battle_theme);
depth=DEPTH_BATTLE.SOUL;
image_speed=1/2;
x=battle_soul.x;
y=battle_soul.y;

_ended=false;

audio_play_sound(snd_flee,0,false);