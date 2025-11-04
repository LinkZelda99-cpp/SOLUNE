/// obj_intro: Create

// Make GUI coordinates match the window so we always draw on-screen
display_set_gui_maximize();

// Your lines (keep them short-ish to avoid wrapping)
story = [
    "Hope.",
    "It’s a light that shines within your soul… and spreads to those around you.",
    "",
    "But in the broken world, that light is gone.",
    "",
    "Without hope, there is only hopelessness.",
    "A darkness that seeps into everything.",
    "It eats away at your very soul,",
    "and spreads…",
    "until there is nothing left.",
    "",
    "Hopelessness.",
    "",
    "But then, a light appeared.",
    "",
    "Not the sun.",
    "Not the moon.",
    "Not just a light that pushes back the darkness…",
    "",
    "But one that makes it cease to exist.",
    "",
    "This light comes from a single soul.",
    "",
    "A soul of HOPE.",
    "",
    "One with the ability to banish the darkness.",
    "",
    "Name the one who has soul."
];

// sequencing
idx = 0;                 // current line index
state = 0;               // 0 = fade in, 1 = hold, 2 = fade out
alpha_txt = 0;           // fade value 0..1
timer = 0;
hold_time = 90;          // frames to keep a line on screen (1.5s @ 60fps)
fade_spd = 0.06;         // fade speed

// input (so you can tap to advance)
key_next_pressed = false;

// font (optional — comment this out if you don’t have fnt_intro yet)
if (asset_get_index("font_menu") != -1) {
    fnt = font_menu;
} else {
    fnt = -1; // use default
}
