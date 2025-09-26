// Draw centered scaled to GUI size
var gw = display_get_gui_width();
var gh = display_get_gui_height();

// Draw the current frame centered, no extra scaling if sprite matches GUI size.
// If the sprite was exported at 2x and you want to draw it 1x on GUI, choose scale accordingly.

var sx = gw * 0.5;
var sy = gh * 0.5;

// If your sprite is exact GUI size, scale_x = scale_y = 1
draw_sprite_ext(sprite_index, image_index, sx, sy, 1, 1, 0, c_white, 1);