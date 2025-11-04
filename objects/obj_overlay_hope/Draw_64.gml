/// obj_overlay_hope - Draw GUI

// Only draw if visible (you can add more checks here)
if (overlay_alpha > 0.01){
    // Save state
    var old_alpha = draw_get_alpha();
    var old_color = draw_get_color();

    draw_set_alpha(overlay_alpha);
    draw_set_color(overlay_color);

    // Full-screen rectangle that covers the view
    // Use display_get_width()/height so it covers screen even if resolution changes
    var w = display_get_width();
    var h = display_get_height();

    draw_rectangle(0, 0, w, h, false);

    // Restore
    draw_set_alpha(old_alpha);
    draw_set_color(old_color);
}