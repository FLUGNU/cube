//@Collision_H(objet)
if (place_meeting(x + hspd, y, argument0))
{
	while (!place_meeting(x+sign(hspd), y,argument0))
	{
		x = x+ sign(hspd);
	}
	hspd = 0;
}