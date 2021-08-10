/// @description Insert description here
draw_set_color(c_black);
draw_rectangle(x,y,x + sprite_width, y + sprite_height,false);

if(transitioning){
	draw_set_color(c_red);
	draw_circle(0,0,5,false);
	
	if(transition_dir == -1){
		var current_sprite_width = sprite_width * (1 - trans_val)
		var new_sprite_width = sprite_width * trans_val
		
		//draw_sprite_part(sprite_index, image_index, 0, 0, sprite_width/3, sprite_height, x, y );
		//draw_sprite_part(player_front_spr, -1, sprite_width/2, 0, sprite_width, sprite_height, x + sprite_width/2, y );
		
		draw_sprite_part(sprite_index, image_index, new_sprite_width, 0, sprite_width, sprite_height, x, y );
		draw_sprite_part(next_sprite, -1, 0, 0, new_sprite_width, sprite_height, x + current_sprite_width, y );
	} else if(transition_dir == 1){
	
	} else {
		draw_sprite_part(sprite_index, image_index, 0, 0, sprite_width, sprite_height, x, y );
	}
	
} else {
	draw_sprite_part(sprite_index, image_index, 0, 0, sprite_width, sprite_height, x, y );
}

draw_sprite_part(cursor_spr, -1, 0, 0, sprite_width, sprite_height, x, y );