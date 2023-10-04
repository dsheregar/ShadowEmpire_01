// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CollisionAndMovements(){
	//Gravity calculations
	vspd += grv
	
	//Horizontal collision math
	if place_meeting(x + hspd, y, obj_solid) {
		while !place_meeting(x + sign(hspd), y, obj_solid) {
			x += sign(hspd)
		}
		hspd = 0
	}
	
	//Vertical collision math
	landed = place_meeting(x, y + vspd, obj_solid)
	if landed {
		while !place_meeting(x, y + sign(vspd), obj_solid) {
			y += sign(vspd)
		}
		vspd = 0
	}
	
	
	x += hspd
	y += vspd
	
	if distance_to_object(opponent) > 480 - 100
		x -= hspd
}