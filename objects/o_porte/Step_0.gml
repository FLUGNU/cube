/// @description Insert description here
// You can write your code in this editor
if (door_open)
{
	if door_height > -50 {door_height -=5;}
}
else
{
	if door_height < 0 {door_height +=5;}
}
y = initial_y + door_height;