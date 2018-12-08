/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y, o_blocc) && place_meeting(x,y-1,o_cube) && !toggle
{
	toggle=!toggle;
	alarm_set(0,15)
}
if destroy ==1
{
	instance_destroy()
}