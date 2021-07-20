draw_self();
draw_set_colour(c_white);
var writable_width = abs(sprite_width) - 25;

draw_text_ext(x - abs(sprite_width/2) + 20, y - abs(sprite_height/2), text_body, 20, writable_width);