if flag = false{
	flag = true
    a = instance_create_depth(430, 80, 0, battle_dialog_enemy);
    a.text = "*silence*"
}
if !instance_exists(a){
	start=1
	Battle_SetTurnTime(-1)
}
if start = 1{
if t == 50{
	
}
if t == 250{
	Battle_EndTurn()
}
}