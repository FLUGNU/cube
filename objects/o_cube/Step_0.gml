/// Déplacements
// Fonctions
Perso_Key_Check();
// Mouvements
var move = press_right - press_left;
if(current_time-t>300 && modechargeausol ==0 && (place_meeting(x, y+1, o_mur)||hspd==move*spdr))  { hspd = move * spdr}
else if (current_time-t>150 && modechargeausol ==0 && (place_meeting(x, y+1, o_mur)||hspd==move*spdm))  { hspd = move * spdm}
else if (current_time-t<40 && modechargeausol ==0 && (place_meeting(x, y+1, o_mur)||hspd==move*spdl))  { hspd = move * spdl} 
else {hspd = move * spd}
	
vspd = vspd + grav;
// Saut

if (place_meeting(x, y+1, o_mur))  && (press_up_released) && !(place_meeting(x,y,o_ressort))
{
	vspd = 0;	
} 
if (place_meeting(x, y+1, o_mur)) && (press_up) && (press_up_held) && !(place_meeting(x,y,o_ressort))
{
	vspd = -20;
}

if (vspd <0) && (!press_up_held) vspd = max(vspd,-10)
//Charge au sol
if (!place_meeting(x,y+1,o_mur) && keyboard_check_pressed(vk_down) && modechargeausol==0)
{
	t = current_time;
	hspd = 0;
	vspd = 0;
	modechargeausol = 1
}
if modechargeausol == 1 && current_time-t>150 
{
	hspd = 0;
	if (place_meeting(x,y+1,o_mur)) {modechargeausol= 0;}
	vspd = 30;
}
else if (modechargeausol==1){
		hspd = 0;
		vspd = 0;
}

// Mouvement bas
if (place_meeting(x,y+1,o_mur) && keyboard_check(vk_down)) && keyboard_check(vk_right)
{
	hspd =1
}
if (place_meeting(x,y+1,o_mur) && keyboard_check(vk_down)) && keyboard_check(vk_left)
{
	hspd =-1
}
if (place_meeting(x,y+1,o_mur) && keyboard_check_released(vk_down))
{
	t=current_time
}
// Collisions 
Collision_H(o_mur)
Collision_H(o_porte)
x = x + hspd;
Collision_V(o_mur)
Collision_V(o_porte)
y = y + vspd;
// Téléportation
if keyboard_check(vk_lshift) {
	x = o_tp.x;
	y = o_tp.y;
}
if keyboard_check(vk_f1) {
	x = 4800;
	y = 2250;
}
if keyboard_check(vk_f2){
room_next(1)
}
// Animations
  if (!place_meeting(x,y+1,o_mur) && (modechargeausol == 1))
			 {
				 sprite_index = s_perso_charge} 
				 else
if !(place_meeting(x, y+1, o_mur))
{
    sprite_index = s_perso_jump;
}
else 
{
     if (hspd == 0) && (!keyboard_check(vk_down))
     {
        sprite_index = s_perso_surplace;
     }
     else
	
				 {
					 if (place_meeting(x,y+1,o_mur) && keyboard_check(vk_down) && !keyboard_check(vk_left) && !keyboard_check(vk_right))
			 {
				 sprite_index = s_perso_bas_surplace
			 } 
			 else
			  {
					 if (place_meeting(x,y+1,o_mur) && keyboard_check(vk_down) && keyboard_check(vk_left)) or (place_meeting(x,y+1,o_mur) && keyboard_check(vk_down) && keyboard_check(vk_right))
			 {
				 sprite_index = s_perso_bas
			 } 
			 else
     {
         if(current_time-t>300)
		 { 
			 sprite_index = s_perso_runrun;
		 } 
	
		 else 
		 {
			 if (current_time-t>150) 
			 {
				 sprite_index = s_perso_run150
			 } 
				
				 
				 else
				 {sprite_index = s_perso_run}
				 } 
	 }
	
	 }
}
}
if hspd != 0
{
	image_xscale = sign(hspd)
}

// Collisions pics
 
if (place_meeting(x,y+1,o_pic)) or (place_meeting(x-1,y,o_pic))  or (place_meeting(x+1,y,o_pic))
{
	room_restart()
}
//pic nomove

if (place_meeting(x,y+1,o_pic_nomove)) or (place_meeting(x-1,y,o_pic_nomove))  or (place_meeting(x+1,y,o_pic_nomove))
{
	room_restart()
}
// ressort