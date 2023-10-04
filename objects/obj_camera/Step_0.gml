/// @description Insert description here
// You can write your code in this editor
if distance_to_point(target_x, target_y) < spd
{
	x = target_x
	y = target_y
} else
{
	dir = point_direction(x, y, target_x, target_y)
	x += lengthdir_x(spd, dir)
	y += lengthdir_y(spd, dir)
}

//Move Camera
camera_set_view_border(view_camera[0], room_width/4, room_height)
camera_set_view_target(view_camera[0], global.camera)