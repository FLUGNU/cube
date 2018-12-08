/// @description Insert description here
// You can write your code in this editor
if o_nombril.image_index==3 && masque==1
{
	sprite_index=s_bossEYE
	
}
if keyboard_check(vk_numpad0)
{
	instance_create_depth(x,y,-9999,o_line)
}
//if image_index==29 && sprite_index==s_bossEYE
//{
//	image_speed=0
//}
if image_index==2 && sprite_index==s_bossEYE
{
	instance_create_depth(1615,551,-9999,o_line)
	instance_create_depth(1503, 551, -9999,o_line)
}
if sprite_index==s_bossEYE && image_index ==56
{
	masque=0
	sprite_index=s_bossBOOM
}