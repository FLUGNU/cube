/// @description Insert description here
// Pause pic

if image_index==12 && mode == 1
{
	ot = current_time
	mode = 0
	image_speed = 0
	image_index += 1
}
if current_time-ot>tdp && mode == 0
{
	mode = 1
	image_speed = 1
	image_index = 0
}
