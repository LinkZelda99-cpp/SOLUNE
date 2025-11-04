/// obj_overlay_hope - Create
/// Configuration
// Hope value source (0..100). You can update global.hope from your game logic.
if (!variable_global_exists("hope")) global.hope = 0;

// How the overlay maps to hope:
// When hope = 0 -> overlay_alpha = overlay_alpha_max (very dark)
// When hope = 100 -> overlay_alpha = overlay_alpha_min (much lighter / almost gone)
overlay_alpha_min = 0.05;   // min alpha (nearly transparent) at max hope
overlay_alpha_max = 0.85;   // max alpha (very dark) at min hope

// smoothing
overlay_alpha = overlay_alpha_max; // current drawn alpha
overlay_alpha_speed = 0.08;        // how fast alpha approaches target (0.0 - 1.0); bigger = snappier

// optional tint adjustments
overlay_color = c_black; // color of the overlay (black by default)
