_time = 0;
_frame_skip = 0;
_frame_skipped = 0;
global.blur_amount = 0;
global.classic_ui = 0;
global.classic_ui_spr = 0;
global.Panel = battle_menu_fight_knife;
global.kr = 1;
global.surface_gui = surface_create(640, 480);
global.controlstype = 0
global.roomaftergameover = room_logo
global.mercy_meter = 0;
global.gorach_beat = false;
global.gorach_spared = false;
global.intro_skipped = false;
ini_open("savevar.ini")
gotoroom = ini_read_real("Var", "roomaftergameover", asset_get_index("room_logo_2"))
ini_close()
if os_type == os_android and global.controlstype = 0{
	instance_create_depth(0, 0, -400, obj_mobilecontrols_withRbutton)
}
if os_type == os_android and global.controlstype = 1{
    instance_create_depth(0, 0, -400, obj_mobilebuttonswithr)
}
if os_type == os_android and global.controlstype = 2{
    instance_create_depth(0, 0, -400, obj_mobilekeys)
}
if os_type == os_android and global.controlstype = 3{
    instance_create_depth(0, 0, -400, mobilepad_init)
	instance_create_depth(0, 0, -400, mobilepad_system)
}
