function piano_first_attack(){
    var note_data = [
        // [pitch, frame_delay, duration_secs]
        [60, 0, 0.5],
        [62, 10, 0.5],
        [64, 20, 1.0],
        [65, 30, 0.25],
        [67, 40, 0.75]
    ];

    for (var i = 0; i < array_length(note_data); i++) {
        var pitch = note_data[i][0];
        var delay = note_data[i][1];
        var duration = note_data[i][2];

        // Store in a global array to use in alarms
        global.piano_note_pitch[i] = pitch;
        global.piano_note_height[i] = duration * 240; // pixel height
        alarm[i] = delay;
    }
}