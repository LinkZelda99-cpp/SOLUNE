///@desc Hurt
if(!global.hope_shield_used){
	audio_play_sound(snd_shield_break, 1, false)
	global.hope_shield_used = true;
}
else {
_inv=Player_GetInvTotal();
audio_play_sound(snd_hurt,0,false);
Camera_Shake(2,2,4,4);
}