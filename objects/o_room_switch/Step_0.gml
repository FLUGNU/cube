/// @description Insert description here
// You can write your code in this editor


if (place_meeting(x,y,o_cube)) && keyboard_check(vk_down)
{
	room_goto(new_room);
}
if (place_meeting(x,y,o_cube))
{ 
	image_index=1	
}
else
{
	image_index=0
}