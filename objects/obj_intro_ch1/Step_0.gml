if (keyboard_check_pressed(skip_key) || Input_IsPressed(INPUT.CONFIRM)) {
	global.intro_skipped = true;
    finish_intro();
    exit;
}

// If sprite finished
if (playing && image_index >= sprite_get_number(sprite_index) - 1) {
    // End of animation reached
    finish_intro();
}
