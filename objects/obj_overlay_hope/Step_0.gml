/// obj_overlay_hope - Step

// Clamp hope and normalize to 0..1
var hope_val = clamp(global.hope, 0, 100);
var hope_norm = hope_val / 100.0; // 0.0 .. 1.0

// Target alpha: high when hope is low, low when hope is high
var target_alpha = lerp(overlay_alpha_max, overlay_alpha_min, hope_norm);

// Smooth approach (exponential-ish)
overlay_alpha += (target_alpha - overlay_alpha) * overlay_alpha_speed;

// Small clamp to be safe
overlay_alpha = clamp(overlay_alpha, min(overlay_alpha_min, overlay_alpha_max), max(overlay_alpha_min, overlay_alpha_max));
