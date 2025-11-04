
display_set_gui_size(window_get_width(), window_get_height());
if (line_index < array_length(text_lines)) {
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_alpha(fade_alpha);
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, text_lines[line_index]);
    draw_set_alpha(1); // Reset alpha after drawing
}
if (line_index >= 0 && line_index < array_length(text_sprites)) {
    var sprite = text_sprites[line_index];
    var img_w = sprite_get_width(sprite);
    var img_h = sprite_get_height(sprite);
    var img_x = display_get_gui_width() / 2 - img_w / 2;
    var img_y = display_get_gui_height() / 2 - img_h / 2 - 100; // Adjust above text

    draw_sprite_ext(sprite, 0, img_x, img_y, 1, 1, 0, c_white, fade_alpha);
}
