// State checks (use yours if different)
var STATE = Battle_GetState();
var MENU = Battle_GetMenu();

// Only draw shield & SOUL when allowed
var soul_should_draw = (
    soul_visible &&
    STATE == BATTLE_STATE.IN_TURN || 
    STATE == BATTLE_STATE.TURN_PREPARATION ||
    (STATE == BATTLE_STATE.MENU && MENU != BATTLE_MENU.FIGHT_AIM && MENU != BATTLE_MENU.FIGHT_ANIM && MENU != BATTLE_MENU.FIGHT_DAMAGE)
);

// SHIELD DRAWING (only if not used and soul is visible)
if (soul_should_draw && !global.hope_shield_used) {
    var current_scale = pulse_scale_base + sin(pulse_timer) * pulse_scale_amount;
    var current_alpha = pulse_alpha_base + sin(pulse_timer) * pulse_alpha_amount;

    // Draw shield with pulse effect, rotated same as soul
    draw_set_alpha(current_alpha);
    draw_sprite_ext(spr_hope_shield, 0, x, y, current_scale, current_scale, image_angle, c_white, current_alpha);

    // Optional: Draw a larger, faint shield behind (for glow)
    draw_set_alpha(0.5);
    draw_sprite_ext(spr_hope_shield, 0, x, y, 1.5, 1.5, image_angle, c_white, 0.5);

    draw_set_alpha(1);
}

// DRAW SOUL (only if visible and allowed)
if (soul_should_draw) {
    draw_self(); // draw SOUL normally
}

// GLOW EFFECT (optional, only if soul is visible)
if (soul_should_draw && STATE == BATTLE_STATE.IN_TURN) {
    draw_sprite_ext(sprite_index, 0, x, y, 1.6, 1.6, image_angle, image_blend, init_alpha);
    draw_sprite_ext(spr_soul_light, image_index, x, y, light_size * 0.08, light_size * 0.08, image_angle, image_blend, !global.classic_ui);
    draw_sprite_ext(spr_soul_guangbiao, index, x, y, light_size, light_size, 0, c_white, !global.classic_ui);
}

// Reset alpha after custom drawing
draw_set_alpha(1);
