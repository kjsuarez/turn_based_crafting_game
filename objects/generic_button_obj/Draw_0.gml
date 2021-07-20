/// @description Insert description here
draw_self();

draw_set_colour(c_black);
var writable_width = abs(sprite_width);
draw_set_font(small_font);
draw_text_ext(x - abs(sprite_width/2) + 3, y - abs(sprite_height/2), text_body, 3, writable_width);
