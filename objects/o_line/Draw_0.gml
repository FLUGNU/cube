/// @description Insert description here
// Lines
if o_nombril.image_index ==3{
draw_set_alpha(1);
temp=1
dirm = direction;
draw_set_color(c_white)
repeat (lines) 
{
	draw_line_width(x,y, x+lengthdir_x(1920, dirm), y+lengthdir_y(1080,dirm), line_width);
	dirm+= (360/lines);
}
draw_set_alpha(alpha);
draw_rectangle(0,0, room_width, room_height, false);
}