/// @description Insert description here
// You can write your code in this editor
line_width -= 1.2 ;
alpha -= .1;
if (line_width <= 0 && alpha <= 0)
{
	instance_destroy();
}