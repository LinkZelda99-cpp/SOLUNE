// Set up
sprite_index = spr_intro_ch1; 
image_speed = 1;            // 1 frame per step (frame-per-frame playback)
image_index = 0;
playing = true;
skip_key = vk_enter;       // or vk_space or Input_IsPressed(INPUT.CONFIRM) depending on your input system

// Optional: music
audio_play_sound(mus_horizon, 0, false);


