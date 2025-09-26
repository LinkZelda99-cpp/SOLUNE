if (fade_mode == 1 && alpha >= 1) {
    // finished fade-out
    if (target_room != -1) {
        var r = target_room;
        target_room = -1;
        room_goto(r);
    }
}
else if (fade_mode == 2 && alpha <= 0) {
    // finished fade-in
    fade_mode = 0;
}
