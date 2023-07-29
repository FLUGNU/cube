function Collision_V(argument0) {
	//@Collision_V (objet)
	if (place_meeting(x, y + vspd, argument0))
	{
		while (!place_meeting(x, y + sign(vspd), argument0))
		{
			y = y+ sign(vspd);
		}
		vspd = 0;
	}


}
