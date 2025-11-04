depth = DEPTH_BATTLE.SOUL;
image_speed = 0;
image_blend = c_white;
init_alpha = 0.7 * !global.classic_ui;
moveable = 1;
if (!global.classic_ui) Anim_Create(id, "init_alpha", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, init_alpha, -init_alpha, 35);
light_size = 0;
index = 1;
follow_board = false;
_inv = 0;
global.moving = 0;
shield_used = false;      // true = used, false = still available
soul_visible = true;      // true = soul is currently visible (e.g. not in blinking phase)
pulse_timer = 0;      // to track time
pulse_speed = 0.05;   // how fast the pulse animates
pulse_scale_base = 1.2;  // base scale (shield bigger than soul)
pulse_scale_amount = 0.15; // how much it grows/shrinks
pulse_alpha_base = 0.5;    // base transparency
pulse_alpha_amount = 0.3;  // how much alpha changes with pulse

