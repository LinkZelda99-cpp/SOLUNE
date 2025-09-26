/// obj_intro: Draw GUI End

var gw = display_get_gui_width();
var gh = display_get_gui_height();

// full black background (safe even if app surface is disabled)
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(0, 0, gw, gh, false);

// text style
if (fnt != -1) draw_set_font(fnt);
draw_set_color(c_white);
draw_set_halign(fa_left);   // left for reliable wrapping
draw_set_valign(fa_top);

// fade
draw_set_alpha(alpha_txt);

// margins & wrapping
var margin = max(24, gw * 0.08);           // 8% screen margin
var wrap_w = gw - margin * 2;              // text width
var top_y  = gh * 0.35;                    // vertical position

// draw current line (wrapped)
if (idx < array_length(story)) {
    draw_text_ext(margin, top_y, string(story[idx]), 28, wrap_w);
}

// reset draw state
draw_set_alpha(1);
