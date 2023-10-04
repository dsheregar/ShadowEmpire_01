// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HitManager_Test(){
	
	var x_hitbox = 0
	var y_hitbox = 0
	var x_scale = 1
	var y_scale = 1
	var angle = 0
	
	#region
		
		//Ranjit Hitboxes
		if character == CHAR_RANJIT
		{
			switch (state)
			{
				case STATE_ATTACK:
					switch (atk_type)
					{
						case ATK_LP:
							x_hitbox = 40*sign(image_xscale)
							y_hitbox = 137
							x_scale = 4*sign(image_xscale)
							y_scale = 2.5
						break
					
						case ATK_RP:
							x_hitbox = 40*sign(image_xscale)
							y_hitbox = 135
							x_scale = 4*sign(image_xscale)
							y_scale = 2
						break
					
						case ATK_LK:
							x_hitbox = 65*sign(image_xscale)
							y_hitbox = 165
							x_scale = 2*sign(image_xscale)
							y_scale = 4
							//angle = -45*sign(image_xscale)
						break
					
						case ATK_RK:
							x_hitbox = 50*sign(image_xscale)
							y_hitbox = 150
							x_scale = 2*sign(image_xscale)
							y_scale = 4
							//angle = -45*sign(image_xscale)
						break
					}
				break
				
				case STATE_ATTACK_DUCK:
					switch (atk_type)
					{
						case ATK_LP:
							x_hitbox = 60*sign(image_xscale)
							y_hitbox = 73
							x_scale = 5*sign(image_xscale)
							y_scale = 1.5
							angle = -20*sign(image_xscale)
						break
					
						case ATK_RP:
							x_hitbox = 45*sign(image_xscale)
							y_hitbox = 70
							x_scale = -5*sign(image_xscale)
							y_scale = 1.5
							angle = 5*sign(image_xscale)
						break
					
						case ATK_LK:
							x_hitbox = 45*sign(image_xscale)
							y_hitbox = 88
							x_scale = -2.8*sign(image_xscale)
							y_scale = 5
							angle = -70*sign(image_xscale)
						break
					
						case ATK_RK:
							x_hitbox = 40*sign(image_xscale)
							y_hitbox = 69
							x_scale = 1.4*sign(image_xscale)
							y_scale = 4.8
							angle = -75*sign(image_xscale)
						break
					}
				break
				
				case STATE_THROW:
					switch (throw_dir)
					{
						case THROW_FORWARD:
							x_hitbox = 55*sign(image_xscale)
							y_hitbox = 120
							x_scale = 3*sign(image_xscale)
							y_scale = 1.5
						break
						case THROW_BACKWARD:
							x_hitbox = 55*sign(image_xscale)
							y_hitbox = 105
							x_scale = 3*sign(image_xscale)
							y_scale = 2.8
						break
					}
				break
				
				#region	//Ranjit Combos
				
				case HEAD_SLAMMER:
					x_hitbox = 55*sign(image_xscale)
					y_hitbox = 127
					x_scale = 1.5*sign(image_xscale)
					y_scale = 3
					angle = -60*sign(image_xscale)
				break
				
				case AERIAL_ROUNDHOUSE:
					x_hitbox = 40*sign(image_xscale)
					y_hitbox = 135
					x_scale = 1.5*sign(image_xscale)
					y_scale = 6
					angle = -45*sign(image_xscale)
				break
				
				#endregion
			}
		}
		
		if character == CHAR_MIGUEL
		{
			switch (state)
			{
				case STATE_ATTACK:
					switch (atk_type)
					{
						case ATK_LP:
							x_hitbox = 70*sign(image_xscale)
							y_hitbox = 137
							x_scale = -3*sign(image_xscale)
						break
					
						case ATK_RP:
							x_hitbox = 82*sign(image_xscale)
							y_hitbox = 140
							y_scale = 2
							angle = -45*sign(image_xscale)
						break
					
						case ATK_LK:
							x_hitbox = 85*sign(image_xscale)
							y_hitbox = 100
							x_scale = -1.5*sign(image_xscale)
							y_scale = 3
						break
					
						case ATK_RK:
							x_hitbox = 80*sign(image_xscale)
							y_hitbox = 140
							x_scale = -1.5*sign(image_xscale)
							y_scale = 3
						break
					}
				break
				
				case STATE_ATTACK_DUCK:
					switch (atk_type)
					{
						case ATK_LP:
							x_hitbox = 1*sign(image_xscale)
							y_hitbox = 25
							x_scale = -9*sign(image_xscale)
							y_scale = 2
						break
					
						case ATK_RP:
							x_hitbox = -1*sign(image_xscale)
							y_hitbox = 25
							x_scale = 9*sign(image_xscale)
							y_scale = 2
						break
					}
				break
				
				case STATE_THROW:
					switch (throw_dir)
					{
						case THROW_FORWARD:
							x_hitbox = 80*sign(image_xscale)
							y_hitbox = 110
							x_scale = -2.5*sign(image_xscale)
						break
						case THROW_BACKWARD:
							x_hitbox = 50*sign(image_xscale)
							y_hitbox = 150
							x_scale = -2*sign(image_xscale)
							y_scale = 2
						break
					}
				break
				
				
				//Miguel Combos
				
			}
		}
		

	#endregion
	
	switch (state)
	{
		case STATE_ATTACK:
			//Check for image index and then create the hit object
			if landed
			{
				//Normal indexes
				RenderHit_Test(attack_indexes[atk_type], x_hitbox, y_hitbox, 5, self, noone, x_scale, y_scale, angle)
			} else
			{
				//Air indexes
				
			}
		break
		
		case STATE_ATTACK_DUCK:
			RenderHit_Test(attack_duck_indexes[atk_type], x_hitbox, y_hitbox, 5, self, noone, x_scale, y_scale, angle)
		break
		
		case STATE_THROW:
			RenderHit_Test(throw_indexes[throw_dir], x_hitbox, y_hitbox, 7, self, noone, x_scale, y_scale, angle)
		break
		
		
		//Ranjit Combos
		case HEAD_SLAMMER:
			RenderHit_Test(head_slammer_index, x_hitbox, y_hitbox, 10, self, noone, x_scale, y_scale, angle)
		break
		case AERIAL_ROUNDHOUSE:
			RenderHit_Test(aerial_roundhouse_index, x_hitbox, y_hitbox, 10, self, noone, x_scale, y_scale, angle)
		break
		
	}
}