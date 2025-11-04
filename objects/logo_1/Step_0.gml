if(Input_IsPressed(INPUT.CONFIRM)){
	audio_stop_all();
	room_goto_next();
}
if (image_index >= sprite_get_number(spr_logo) - 1) {
    image_speed = 0;
    image_index = sprite_get_number(spr_logo) - 1;
}
