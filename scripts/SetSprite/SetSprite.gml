// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetSprite(){
	if (sprite_index != argument0)
	{
			sprite_index = argument0
			image_index = 0
			return true
	}
	return false
}