if flag = false{
	flag = true
    a = instance_create_depth(430, 80, 0, battle_dialog_enemy);
    a.text = "*silent rage*"
}
if !instance_exists(a){
	start=1
	Battle_SetTurnTime(-1)
}
if start = 1{
if t == 50{
	show_debug_message("Gorach circle attack STARTED");
	instance_create_depth(320, 240, DEPTH_BATTLE.BULLET, Warning);
	instance_destroy(Warning);
	gorach_attack_circle();
	//gorach_silence()
}
if t == 250{
	Battle_EndTurn()
}
}