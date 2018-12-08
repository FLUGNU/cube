/// @description Insert description here
// Collision o_mur
if place_meeting(x-100,y,o_cube) && skin==0
{
	sprite_index=s_masquelong
	skin=1
}

if sprite_index==s_masquelong && image_index==22
{
	sprite_index=s_masquefrappe
}
if sprite_index==s_masquefrappe && image_index ==3
{
	image_speed=0
	with bloccol1 instance_destroy()
	with bloccol2 instance_destroy()
}
if sprite_index==s_masquefrappe && image_index ==3 && apparition==0
{
	apparition=1
	bloccol3 = instance_create_depth(4960,2272,0,o_mur)
	bloccol3.image_xscale= 7
	bloccol3.image_yscale= 0.88
}


// Mort
if sprite_index==s_masquefrappe && place_meeting(x,y,o_cube) 
{
	room_restart()
}
if sprite_index==s_masquelong && place_meeting(x,y,o_cube) 
{
	room_restart()
}
