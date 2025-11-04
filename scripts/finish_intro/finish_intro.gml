function finish_intro() {

    // Stop music or fade
    audio_stop_sound(mus_horizon);
    // Transition to the menu or first room
    room_goto(room_logo);
}
