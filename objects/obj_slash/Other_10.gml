var dmg = 1
if global.kr = 1{
	Player_HurtKr()
} else if global.kr = 0{
	Battle_CallSoulEventHurt()
	Player_Hurt(dmg)
}
