/// obj_intro: Step

// quick-advance input: ENTER, Z, or CONFIRM if your input system is active
var want_next = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));
if (is_undefined(want_next)) want_next = false;

// fade/hold state machine
switch (state) {
    case 0: // fade in
        alpha_txt += fade_spd;
        if (alpha_txt >= 1) {
            alpha_txt = 1;
            timer = 0;
            state = 1;
        }
    break;

    case 1: // hold
        timer++;
        if (timer >= hold_time || want_next) {
            state = 2;
        }
    break;

    case 2: // fade out then advance
        alpha_txt -= fade_spd;
        if (alpha_txt <= 0) {
            alpha_txt = 0;
            idx++;
            if (idx >= array_length(story)) {
                // DONE → go to your naming room
                // CHANGE THIS to your real name-entry room or script
                if (asset_get_index("room_naming") != -1) {
                    room_goto(room_naming);
                } else {
                    // fallback: go to your menu if naming not ready yet
                    if (asset_get_index("room_menu") != -1) room_goto(room_menu);
                }
            } else {
                state = 0; // fade in next line
            }
        }
    break;
}
