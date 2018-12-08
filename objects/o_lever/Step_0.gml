/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y, o_cube) && ready
{
	ready = false;
	with (instance_nearest(x,y, o_porte)) {door_open = !door_open;}
}

if !ready
{
	if ready_alarm < 20 {ready_alarm+= 1;}
	else
	{
		ready_alarm = 0;
		ready = true;
	}
}
// ANIMATION

if place_meeting (x,y,o_cube)
{
	image_speed=1
}
else {image_speed =0}