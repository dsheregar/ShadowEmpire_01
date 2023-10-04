// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HandleHurt(){
	if landed
	{
		vspd += 0.05
		if dmg_state == EFF_NONE
			hspd = -3 * sign(image_xscale)
		if image_index >= 10 and (dmg_state == EFF_KNOCKBACK || dmg_state == EFF_KNOCKUP)
			hspd = 0
		if AnimEnd()
		{
			image_xscale *= -1
			if duck
			{
				sprite_index = sp_duck
				image_index = image_number - 1
			}
			dmg_state = EFF_NONE
			state = STATE_FREE
		}
	}
}