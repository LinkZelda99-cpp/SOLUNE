///@desc Bullet Collision
if(!global.hope_shield_used){
	audio_play_sound(snd_shield_break, 1, false)
	global.hope_shield_used = true;
}
else {
if(_inv<=0){
	Battle_CallBulletEventSoulCollision();
}
}