/// @function Room_Goto_Fade(room_target, time)
/// @param room_target  The room you want to go to
/// @param time         Fade speed in frames

function Room_Goto_Fade(_room, _time) {
    if (!instance_exists(fader)) return;

    fader.target_room = _room;
    fader.fade_mode = 1; // fading OUT
    Fader_Fade(-1, 1, _time);
}
