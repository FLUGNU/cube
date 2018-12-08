/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,o_cube) && !toggle && keyboard_check(vk_up)
{
	image_index=0
	image_speed=1
	toggle=true
	o_cube.vspd -=40
}
else if !toggle
{
	image_index=7
	image_speed=0
}