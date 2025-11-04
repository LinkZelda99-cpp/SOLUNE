if flag = false{
	flag = true
    a = instance_create_depth(430, 80, 0, battle_dialog_enemy);
    a.text = "{font 0}{voice 0}So{sleep 10}.{sleep 10}.{sleep 10}.&Do you really&want to fight&with me?{pause}{clear}Anyway{sleep 4}.{sleep 4}.{sleep 4}.{sleep 4}."
}
if !instance_exists(a){
	start=1
	Battle_SetTurnTime(-1)
}
if start=1{
if t == 50{
	MakeBoneExplode(bx, by, 0, 10, 20, 0, 1, 10, 1, 0.1)
}
if t == 150{
	Battle_EndTurn()
}
}
