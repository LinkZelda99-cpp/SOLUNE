if (line_index >= array_length(text_lines)) {
    // Transition to next room (e.g., title screen)
    room_goto(room_logo); // Change to your title/menu room
    exit;
}

switch (state) {
    case "fade_in":
        fade_alpha += fade_speed;
        if (fade_alpha >= 1) {
            fade_alpha = 1;
            state = "wait";
        }
        break;

    case "wait":
        line_timer++;
        if (line_timer >= line_delay) {
            state = "fade_out";
        }
        break;

    case "fade_out":
        fade_alpha -= fade_speed;
        if (fade_alpha <= 0) {
            fade_alpha = 0;
            line_timer = 0;
            line_index++;
            state = "fade_in";
        }
        break;
}
if (keyboard_check_pressed(vk_enter)) {
    room_goto(room_logo);
}
