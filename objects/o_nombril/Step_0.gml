/// @description Insert description here
// You can write your code in this editor
if !vulnerable && current_time>100+from_vulnerable
{
	vulnerable=1
}
if place_meeting(x,y,o_cube) && o_cube.sprite_index==s_perso_charge && nombril==0 && vulnerable 
{
	image_index=1
	nombril=1;
	vulnerable=0
	from_vulnerable=current_time;
}
if place_meeting(x,y,o_cube) && o_cube.sprite_index==s_perso_charge && nombril==1 && vulnerable
{
	image_index=2
	nombril=2;
	vulnerable=0
	from_vulnerable=current_time;
}
if place_meeting(x,y,o_cube) && o_cube.sprite_index==s_perso_charge && nombril==2 && vulnerable
{
	image_index=3
	nombril=3;
	vulnerable=0
	from_vulnerable=current_time;
}