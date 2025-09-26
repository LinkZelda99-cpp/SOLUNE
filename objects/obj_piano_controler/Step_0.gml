for (var i = 0; i < array_length(note_data); i++) {
    var spawn_frame = note_data[i][0];
    var pitch = note_data[i][1];

    if (frame_counter == spawn_frame) {
        // Map pitch to X position (middle C = 60)
        var x_pos = 40 + (pitch - 60) * 6;

        // Spawn a bullet
        var b = instance_create_layer(x_pos, 380, "Instances", battle_bullet);
        b.vspeed = -4; // shoot upward
    }
}

frame_counter++;