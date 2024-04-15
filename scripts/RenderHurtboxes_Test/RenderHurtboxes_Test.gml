// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RenderHurtboxes_Test(){	
	var head = CreateHurtboxes_Test(0, 0, 0, 0, obj_hurtbox_head)
	var body = CreateHurtboxes_Test(0, 0, 0, 0, obj_hurtbox_body)
	var low = CreateHurtboxes_Test(0, 0, 0, 0, obj_hurtbox_low)
	
	if character == CHAR_RANJIT
	{
		switch (state)
		{
			case STATE_FREE:
				if landed
				{
					if !duck
					{
						head.image_xscale = 39 * sign(image_xscale)
						head.image_yscale = 25
						head.xOffset = -20 * sign(image_xscale)
						head.yOffset = -165
				
						body.image_xscale = 60 * sign(image_xscale)
						body.image_yscale = 55
						body.xOffset = -32 * sign(image_xscale)
						body.yOffset = -140
				
						low.image_xscale = 50 * sign(image_xscale)
						low.image_yscale = 60
						low.xOffset = 0 * sign(image_xscale)
						low.yOffset = -85
					}
					else
					{
						head.image_xscale = 25 * sign(image_xscale)
						head.image_yscale = 18
						head.xOffset = -22 * sign(image_xscale)
						head.yOffset = -123
				
						body.image_xscale = 60 * sign(image_xscale)
						body.image_yscale = 45
						body.xOffset = -37 * sign(image_xscale)
						body.yOffset = -105
				
						low.image_xscale = 95 * sign(image_xscale)
						low.image_yscale = 35
						low.xOffset = -58 * sign(image_xscale)
						low.yOffset = -60
					}
				}
				else
				{
					
				}
			break
			
			case STATE_ATTACK:
				switch(atk_type)
				{
					case ATK_LP:
						head.image_xscale = 35 * sign(image_xscale)
						head.image_yscale = 20
						head.xOffset = -32 * sign(image_xscale)
						head.yOffset = -158
				
						body.image_xscale = 70 * sign(image_xscale)
						body.image_yscale = 53
						body.xOffset = -50 * sign(image_xscale)
						body.yOffset = -138
				
						low.image_xscale = 50 * sign(image_xscale)
						low.image_yscale = 60
						low.xOffset = -10 * sign(image_xscale)
						low.yOffset = -85
					break
					case ATK_RP:
						head.image_xscale = 30 * sign(image_xscale)
						head.image_yscale = 30
						head.xOffset = -20 * sign(image_xscale)
						head.yOffset = -162
				
						body.image_xscale = 50 * sign(image_xscale)
						body.image_yscale = 53
						body.xOffset = -25 * sign(image_xscale)
						body.yOffset = -138
				
						low.image_xscale = 50 * sign(image_xscale)
						low.image_yscale = 60
						low.xOffset = -0 * sign(image_xscale)
						low.yOffset = -85
					break
					case ATK_LK:
						if (image_index < 8)
						{
							head.image_xscale = 40 * sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -20 * sign(image_xscale)
							head.yOffset = -178
				
							body.image_xscale = 55 * sign(image_xscale)
							body.image_yscale = 53
							body.xOffset = -35 * sign(image_xscale)
							body.yOffset = -158
				
							low.image_xscale = 50 * sign(image_xscale)
							low.image_yscale = 80
							low.xOffset = -15 * sign(image_xscale)
							low.yOffset = -105
						}
						else if (image_index > 11 and image_index < 16)
						{
							head.image_xscale = 40 * sign(image_xscale)
							head.image_yscale = 18
							head.xOffset = -50 * sign(image_xscale)
							head.yOffset = -173
				
							body.image_xscale = 70 * sign(image_xscale)
							body.image_yscale = 53
							body.xOffset = -60 * sign(image_xscale)
							body.yOffset = -155
				
							low.image_xscale = 35 * sign(image_xscale)
							low.image_yscale = 120
							low.xOffset = 68 * sign(image_xscale)
							low.yOffset = -197
							low.image_angle = -45 * sign(image_xscale)
						}
						else
						{
							head.image_xscale = 40 * sign(image_xscale)
							head.image_yscale = 18
							head.xOffset = -50 * sign(image_xscale)
							head.yOffset = -173
				
							body.image_xscale = 70 * sign(image_xscale)
							body.image_yscale = 40
							body.xOffset = -60 * sign(image_xscale)
							body.yOffset = -155
				
							low.image_xscale = 50 * sign(image_xscale)
							low.image_yscale = 90
							low.xOffset = -3 * sign(image_xscale)
							low.yOffset = -115
						}
					break
					case ATK_RK:
						if (image_index > 3 and image_index < 8)
						{
							head.image_xscale = 25 * sign(image_xscale)
							head.image_yscale = 23
							head.xOffset = -35 * sign(image_xscale)
							head.yOffset = -178
				
							body.image_xscale = 45 * sign(image_xscale)
							body.image_yscale = 53
							body.xOffset = -35 * sign(image_xscale)
							body.yOffset = -155
				
							low.image_xscale = 35 * sign(image_xscale)
							low.image_yscale = 190
							low.xOffset = 55 * sign(image_xscale)
							low.yOffset = -190
							low.image_angle = -25 * sign(image_xscale)
						}
						else if (image_index <= 1)
						{
							head.image_xscale = 35 * sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -20 * sign(image_xscale)
							head.yOffset = -180
				
							body.image_xscale = 55 * sign(image_xscale)
							body.image_yscale = 55
							body.xOffset = -35 * sign(image_xscale)
							body.yOffset = -160
				
							low.image_xscale = 35 * sign(image_xscale)
							low.image_yscale = 80
							low.xOffset = -15 * sign(image_xscale)
							low.yOffset = -105
						}
						else
						{
							head.image_xscale = 28 * sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -15 * sign(image_xscale)
							head.yOffset = -180
				
							body.image_xscale = 55 * sign(image_xscale)
							body.image_yscale = 55
							body.xOffset = -35 * sign(image_xscale)
							body.yOffset = -160
				
							low.image_xscale = 20 * sign(image_xscale)
							low.image_yscale = 80
							low.xOffset = -15 * sign(image_xscale)
							low.yOffset = -105
						}
					break
				}
			break
			
			case STATE_ATTACK_DUCK:
				switch(atk_type)
				{
					case ATK_LP:
						head.image_xscale = 25 * sign(image_xscale)
						head.image_yscale = 18
						head.xOffset = -22 * sign(image_xscale)
						head.yOffset = -123
				
						body.image_xscale = 60 * sign(image_xscale)
						body.image_yscale = 45
						body.xOffset = -37 * sign(image_xscale)
						body.yOffset = -105
				
						low.image_xscale = 95 * sign(image_xscale)
						low.image_yscale = 35
						low.xOffset = -58 * sign(image_xscale)
						low.yOffset = -60
					break
					case ATK_RP:
						head.image_xscale = 25 * sign(image_xscale)
						head.image_yscale = 18
						head.xOffset = -22 * sign(image_xscale)
						head.yOffset = -123
				
						body.image_xscale = 60 * sign(image_xscale)
						body.image_yscale = 45
						body.xOffset = -37 * sign(image_xscale)
						body.yOffset = -105
				
						low.image_xscale = 95 * sign(image_xscale)
						low.image_yscale = 35
						low.xOffset = -58 * sign(image_xscale)
						low.yOffset = -60
					break
					case ATK_LK:
						if (image_index > 3 and image_index < 8)
						{
							head.image_xscale = 26 * sign(image_xscale)
							head.image_yscale = 18
							head.xOffset = -50 * sign(image_xscale)
							head.yOffset = -118
				
							body.image_xscale = 75 * sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = -50 * sign(image_xscale)
							body.yOffset = -100
				
							low.image_xscale = 85 * sign(image_xscale)
							low.image_yscale = 45
							low.xOffset = -5 * sign(image_xscale)
							low.yOffset = -94
							low.image_angle = 20 * sign(image_xscale)
						}
						else
						{
							head.image_xscale = 26 * sign(image_xscale)
							head.image_yscale = 18
							head.xOffset = -50 * sign(image_xscale)
							head.yOffset = -118
				
							body.image_xscale = 75 * sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = -50 * sign(image_xscale)
							body.yOffset = -100
				
							low.image_xscale = 78 * sign(image_xscale)
							low.image_yscale = 45
							low.xOffset = -40 * sign(image_xscale)
							low.yOffset = -70
						}
					break
					case ATK_RK:
						if (image_index > 3 and image_index < 8)
						{
							head.image_xscale = 26 * sign(image_xscale)
							head.image_yscale = 18
							head.xOffset = -50 * sign(image_xscale)
							head.yOffset = -118
				
							body.image_xscale = 75 * sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = -50 * sign(image_xscale)
							body.yOffset = -100
				
							low.image_xscale = 85 * sign(image_xscale)
							low.image_yscale = 25
							low.xOffset = -8 * sign(image_xscale)
							low.yOffset = -70
							low.image_angle = 15 * sign(image_xscale)
						}
						else
						{
							head.image_xscale = 26 * sign(image_xscale)
							head.image_yscale = 18
							head.xOffset = -50 * sign(image_xscale)
							head.yOffset = -118
				
							body.image_xscale = 75 * sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = -50 * sign(image_xscale)
							body.yOffset = -100
				
							low.image_xscale = 78 * sign(image_xscale)
							low.image_yscale = 45
							low.xOffset = -40 * sign(image_xscale)
							low.yOffset = -70
						}
					break
				}
			break
			
			case STATE_THROW:
				switch(throw_dir)
				{
					case THROW_FORWARD:
						if (image_index > 4 and image_index < 10)
						{
							head.image_xscale = 25 * sign(image_xscale)
							head.image_yscale = 15
							head.xOffset = 20 * sign(image_xscale)
							head.yOffset = -145
				
							body.image_xscale = 60 * sign(image_xscale)
							body.image_yscale = 45
							body.xOffset = -5 * sign(image_xscale)
							body.yOffset = -130
				
							low.image_xscale = 35 * sign(image_xscale)
							low.image_yscale = 60
							low.xOffset = 25 * sign(image_xscale)
							low.yOffset = -85
						}
						else
						{
							head.image_xscale = 43 * sign(image_xscale)
							head.image_yscale = 26
							head.xOffset = -48 * sign(image_xscale)
							head.yOffset = -156
				
							body.image_xscale = 60 * sign(image_xscale)
							body.image_yscale = 65
							body.xOffset = -55 * sign(image_xscale)
							body.yOffset = -130
				
							low.image_xscale = 40 * sign(image_xscale)
							low.image_yscale = 40
							low.xOffset = 15 * sign(image_xscale)
							low.yOffset = -65
						}
					break
					
					case THROW_BACKWARD:
						if (image_index < 6)
						{
							head.image_xscale = 40 * sign(image_xscale)
							head.image_yscale = 18
							head.xOffset = -3 * sign(image_xscale)
							head.yOffset = -158
				
							body.image_xscale = 65 * sign(image_xscale)
							body.image_yscale = 55
							body.xOffset = -15 * sign(image_xscale)
							body.yOffset = -140
				
							low.image_xscale = 35 * sign(image_xscale)
							low.image_yscale = 60
							low.xOffset = 20 * sign(image_xscale)
							low.yOffset = -85
						}
						else
						{
							head.image_xscale = 27 * sign(image_xscale)
							head.image_yscale = 13
							head.xOffset = 15 * sign(image_xscale)
							head.yOffset = -158
				
							body.image_xscale = 60 * sign(image_xscale)
							body.image_yscale = 60
							body.xOffset = -5 * sign(image_xscale)
							body.yOffset = -145
				
							low.image_xscale = 40 * sign(image_xscale)
							low.image_yscale = 60
							low.xOffset = 20 * sign(image_xscale)
							low.yOffset = -85
						}
					break
				}
			break
			
			case STATE_HURT:
				switch(dmg_state)
				{
					case EFF_NONE:
						if duck
						{
							head.image_xscale = 30 * sign(image_xscale)
							head.image_yscale = 28
							head.xOffset = -25 * sign(image_xscale)
							head.yOffset = -135
				
							body.image_xscale = 60 * sign(image_xscale)
							body.image_yscale = 47
							body.xOffset = -37 * sign(image_xscale)
							body.yOffset = -107
				
							low.image_xscale = 95 * sign(image_xscale)
							low.image_yscale = 37
							low.xOffset = -58 * sign(image_xscale)
							low.yOffset = -62
						}
						else
						{
							switch(where_hurt)
							{
								case HEAD:
									head.image_xscale = 30 * sign(image_xscale)
									head.image_yscale = 20
									head.xOffset = -32 * sign(image_xscale)
									head.yOffset = -160
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = 0 * sign(image_xscale)
									low.yOffset = -85
								break
								
								case MID:
									head.image_xscale = 32 * sign(image_xscale)
									head.image_yscale = 25
									head.xOffset = -20 * sign(image_xscale)
									head.yOffset = -165
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = -10 * sign(image_xscale)
									low.yOffset = -85
								break
								
								case LOW:
									head.image_xscale = 30 * sign(image_xscale)
									head.image_yscale = 20
									head.xOffset = -18 * sign(image_xscale)
									head.yOffset = -160
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = 0 * sign(image_xscale)
									low.yOffset = -85
								break
							}
						}
					break
					
					case EFF_KNOCKUP:
						if image_index < 9
						{
							head.image_xscale = 25 * -sign(image_xscale)
							head.image_yscale = 25
							head.xOffset = 45 * -sign(image_xscale)
							head.yOffset = -120
				
							body.image_xscale = 40 * -sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = 5 * -sign(image_xscale)
							body.yOffset = -120
				
							low.image_xscale = 50 * -sign(image_xscale)
							low.image_yscale = 30
							low.xOffset = -50 * -sign(image_xscale)
							low.yOffset = -115
						} else if ((image_index > 9) && (image_index < 18))
						{
							head.image_xscale = 25 * -sign(image_xscale)
							head.image_yscale = 25
							head.xOffset = 55 * -sign(image_xscale)
							head.yOffset = -50
				
							body.image_xscale = 40 * -sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = 5 * -sign(image_xscale)
							body.yOffset = -60
				
							low.image_xscale = 50 * -sign(image_xscale)
							low.image_yscale = 30
							low.xOffset = -50 * -sign(image_xscale)
							low.yOffset = -60
						} else
						{
							head.image_xscale = 20 * -sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -17 * -sign(image_xscale)
							head.yOffset = -120
				
							body.image_xscale = 60 * -sign(image_xscale)
							body.image_yscale = 50
							body.xOffset = -37 * -sign(image_xscale)
							body.yOffset = -105
				
							low.image_xscale = 80 * -sign(image_xscale)
							low.image_yscale = 30
							low.xOffset = -47 * -sign(image_xscale)
							low.yOffset = -55
						}
					break
					
					case EFF_KNOCKBACK:
						if image_index < 9
						{
							head.image_xscale = 25 * -sign(image_xscale)
							head.image_yscale = 25
							head.xOffset = 45 * -sign(image_xscale)
							head.yOffset = -120
				
							body.image_xscale = 40 * -sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = 5 * -sign(image_xscale)
							body.yOffset = -120
				
							low.image_xscale = 50 * -sign(image_xscale)
							low.image_yscale = 30
							low.xOffset = -50 * -sign(image_xscale)
							low.yOffset = -115
						} else if ((image_index > 9) && (image_index < 18))
						{
							head.image_xscale = 25 * -sign(image_xscale)
							head.image_yscale = 25
							head.xOffset = 55 * -sign(image_xscale)
							head.yOffset = -50
				
							body.image_xscale = 40 * -sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = 5 * -sign(image_xscale)
							body.yOffset = -60
				
							low.image_xscale = 50 * -sign(image_xscale)
							low.image_yscale = 30
							low.xOffset = -50 * -sign(image_xscale)
							low.yOffset = -60
						} else
						{
							head.image_xscale = 20 * -sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -17 * -sign(image_xscale)
							head.yOffset = -120
				
							body.image_xscale = 60 * -sign(image_xscale)
							body.image_yscale = 50
							body.xOffset = -37 * -sign(image_xscale)
							body.yOffset = -105
				
							low.image_xscale = 80 * -sign(image_xscale)
							low.image_yscale = 30
							low.xOffset = -47 * -sign(image_xscale)
							low.yOffset = -55
						}
					break
					
					case EFF_PUSHBACK:
						if duck
						{
							head.image_xscale = 30 * sign(image_xscale)
							head.image_yscale = 28
							head.xOffset = -25 * sign(image_xscale)
							head.yOffset = -135
				
							body.image_xscale = 60 * sign(image_xscale)
							body.image_yscale = 47
							body.xOffset = -37 * sign(image_xscale)
							body.yOffset = -107
				
							low.image_xscale = 95 * sign(image_xscale)
							low.image_yscale = 37
							low.xOffset = -58 * sign(image_xscale)
							low.yOffset = -62
						}
						else
						{
							switch(where_hurt)
							{
								case HEAD:
									head.image_xscale = 30 * sign(image_xscale)
									head.image_yscale = 20
									head.xOffset = -32 * sign(image_xscale)
									head.yOffset = -160
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = 0 * sign(image_xscale)
									low.yOffset = -85
								break
								
								case MID:
									head.image_xscale = 32 * sign(image_xscale)
									head.image_yscale = 25
									head.xOffset = -20 * sign(image_xscale)
									head.yOffset = -165
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = -10 * sign(image_xscale)
									low.yOffset = -85
								break
								
								case LOW:
									head.image_xscale = 30 * sign(image_xscale)
									head.image_yscale = 20
									head.xOffset = -18 * sign(image_xscale)
									head.yOffset = -160
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = 0 * sign(image_xscale)
									low.yOffset = -85
								break
							}
						}
					break
				}
			break
			
			case STATE_SPRINTING:
				
			break
			
			case STATE_STEPBACK:
				
			break
			
			case STATE_BLOCK:
				if !duck
				{
					head.image_xscale = 35 * sign(image_xscale)
					head.image_yscale = 22
					head.xOffset = -28 * sign(image_xscale)
					head.yOffset = -162
				
					body.image_xscale = 60 * sign(image_xscale)
					body.image_yscale = 55
					body.xOffset = -32 * sign(image_xscale)
					body.yOffset = -140
				
					low.image_xscale = 50 * sign(image_xscale)
					low.image_yscale = 60
					low.xOffset = 0 * sign(image_xscale)
					low.yOffset = -85
				}
				else
				{
					head.image_xscale = 33 * sign(image_xscale)
					head.image_yscale = 25
					head.xOffset = -28 * sign(image_xscale)
					head.yOffset = -130
				
					body.image_xscale = 60 * sign(image_xscale)
					body.image_yscale = 45
					body.xOffset = -37 * sign(image_xscale)
					body.yOffset = -105
				
					low.image_xscale = 95 * sign(image_xscale)
					low.image_yscale = 35
					low.xOffset = -58 * sign(image_xscale)
					low.yOffset = -60
				}
				
			break
		}
	}
	
	if character == CHAR_MIGUEL
	{
		switch (state)
		{
			case STATE_FREE:
				if landed
				{
					if !duck
					{
						head.image_xscale = 58 * sign(image_xscale)
						head.image_yscale = 20
						head.xOffset = -25 * sign(image_xscale)
						head.yOffset = -165
				
						body.image_xscale = 85 * sign(image_xscale)
						body.image_yscale = 45
						body.xOffset = -35 * sign(image_xscale)
						body.yOffset = -145
				
						low.image_xscale = 95 * sign(image_xscale)
						low.image_yscale = 75
						low.xOffset = -38 * sign(image_xscale)
						low.yOffset = -100
					}
					else
					{
						head.image_xscale = 25 * sign(image_xscale)
						head.image_yscale = 20
						head.xOffset = -7 * sign(image_xscale)
						head.yOffset = -110
				
						body.image_xscale = 35 * sign(image_xscale)
						body.image_yscale = 25
						body.xOffset = -7 * sign(image_xscale)
						body.yOffset = -95
				
						low.image_xscale = 40 * sign(image_xscale)
						low.image_yscale = 50
						low.xOffset = 1 * sign(image_xscale)
						low.yOffset = -70
					}
				}
				else
				{
					
				}
			break
			
			case STATE_ATTACK:
				switch(atk_type)
				{
					case ATK_LP:
						head.image_xscale = 30 * sign(image_xscale)
						head.image_yscale = 35
						head.xOffset = -15 * sign(image_xscale)
						head.yOffset = -165
				
						body.image_xscale = 45 * sign(image_xscale)
						body.image_yscale = 53
						body.xOffset = -20 * sign(image_xscale)
						body.yOffset = -138
				
						low.image_xscale = 50 * sign(image_xscale)
						low.image_yscale = 60
						low.xOffset = -5 * sign(image_xscale)
						low.yOffset = -85
					break
					case ATK_RP:
						head.image_xscale = 27 * sign(image_xscale)
						head.image_yscale = 27
						head.xOffset = -8 * sign(image_xscale)
						head.yOffset = -162
				
						body.image_xscale = 55 * sign(image_xscale)
						body.image_yscale = 55
						body.xOffset = -20 * sign(image_xscale)
						body.yOffset = -140
				
						low.image_xscale = 50 * sign(image_xscale)
						low.image_yscale = 60
						low.xOffset = -5 * sign(image_xscale)
						low.yOffset = -85
					break
					case ATK_LK:
						head.image_xscale = 27 * sign(image_xscale)
						head.image_yscale = 20
						head.xOffset = -15 * sign(image_xscale)
						head.yOffset = -165
				
						body.image_xscale = 72 * sign(image_xscale)
						body.image_yscale = 45
						body.xOffset = -35 * sign(image_xscale)
						body.yOffset = -145
				
						low.image_xscale = 100 * sign(image_xscale)
						low.image_yscale = 57
						low.xOffset = -7 * sign(image_xscale)
						low.yOffset = -127
					break
					case ATK_RK:
						head.image_xscale = 27 * sign(image_xscale)
						head.image_yscale = 20
						head.xOffset = -17 * sign(image_xscale)
						head.yOffset = -165
				
						body.image_xscale = 72 * sign(image_xscale)
						body.image_yscale = 45
						body.xOffset = -36 * sign(image_xscale)
						body.yOffset = -145
				
						low.image_xscale = 90 * sign(image_xscale)
						low.image_yscale = 45
						low.xOffset = -10 * sign(image_xscale)
						low.yOffset = -141
						low.image_angle = 10 * sign(image_xscale)
					break
				}
			break
			
			case STATE_ATTACK_DUCK:
				switch(atk_type)
				{
					case ATK_LP:
						head.image_xscale = 25 * sign(image_xscale)
						head.image_yscale = 18
						head.xOffset = 33 * sign(image_xscale)
						head.yOffset = -60
				
						body.image_xscale = 75 * sign(image_xscale)
						body.image_yscale = 30
						body.xOffset = 0 * sign(image_xscale)
						body.yOffset = -50
				
						low.image_xscale = 75 * sign(image_xscale)
						low.image_yscale = 47
						low.xOffset = -75 * sign(image_xscale)
						low.yOffset = -67
					break
					case ATK_RP:
						head.image_xscale = 25 * sign(image_xscale)
						head.image_yscale = 18
						head.xOffset = -58 * sign(image_xscale)
						head.yOffset = -60
				
						body.image_xscale = 75 * sign(image_xscale)
						body.image_yscale = 30
						body.xOffset = -75 * sign(image_xscale)
						body.yOffset = -50
				
						low.image_xscale = 75 * sign(image_xscale)
						low.image_yscale = 47
						low.xOffset = 0 * sign(image_xscale)
						low.yOffset = -67
					break
					case ATK_LK:
						head.image_xscale = 27 * sign(image_xscale)
						head.image_yscale = 20
						head.xOffset = 2 * sign(image_xscale)
						head.yOffset = -135
				
						body.image_xscale = 80 * sign(image_xscale)
						body.image_yscale = 60
						body.xOffset = -35 * sign(image_xscale)
						body.yOffset = -120
				
						low.image_xscale = 135 * sign(image_xscale)
						low.image_yscale = 45
						low.xOffset = -65 * sign(image_xscale)
						low.yOffset = -65
					break
					case ATK_RK:
						head.image_xscale = 27 * sign(image_xscale)
						head.image_yscale = 20
						head.xOffset = 2 * sign(image_xscale)
						head.yOffset = -135
				
						body.image_xscale = 80 * sign(image_xscale)
						body.image_yscale = 60
						body.xOffset = -35 * sign(image_xscale)
						body.yOffset = -120
				
						low.image_xscale = 135 * sign(image_xscale)
						low.image_yscale = 45
						low.xOffset = -65 * sign(image_xscale)
						low.yOffset = -65
					break
				}
			break
			
			case STATE_THROW:
				switch(throw_dir)
				{
					case THROW_FORWARD:
						if (image_index > 3 and image_index < 8)
						{
							head.image_xscale = 30 * sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -24 * sign(image_xscale)
							head.yOffset = -195
				
							body.image_xscale = 72 * sign(image_xscale)
							body.image_yscale = 55
							body.xOffset = -30 * sign(image_xscale)
							body.yOffset = -175
				
							low.image_xscale = 110 * sign(image_xscale)
							low.image_yscale = 42
							low.xOffset = -10 * sign(image_xscale)
							low.yOffset = -120

						}
						else
						{
							head.image_xscale = 30 * sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -17 * sign(image_xscale)
							head.yOffset = -165
				
							body.image_xscale = 70 * sign(image_xscale)
							body.image_yscale = 45
							body.xOffset = -33 * sign(image_xscale)
							body.yOffset = -145
				
							low.image_xscale = 90 * sign(image_xscale)
							low.image_yscale = 80
							low.xOffset = -33 * sign(image_xscale)
							low.yOffset = -100
						}
					break
					
					case THROW_BACKWARD:
						if (image_index < 2)
						{
							head.image_xscale = 30 * sign(image_xscale)
							head.image_yscale = 18
							head.xOffset = -3 * sign(image_xscale)
							head.yOffset = -140
				
							body.image_xscale = 50 * sign(image_xscale)
							body.image_yscale = 45
							body.xOffset = -15 * sign(image_xscale)
							body.yOffset = -125
				
							low.image_xscale = 65 * sign(image_xscale)
							low.image_yscale = 60
							low.xOffset = -17 * sign(image_xscale)
							low.yOffset = -80
						}
						else if (image_index > 1 and image_index < 4)
						{
							head.image_xscale = 30 * sign(image_xscale)
							head.image_yscale = 18
							head.xOffset = -43 * sign(image_xscale)
							head.yOffset = -97
							head.image_angle = 90 * sign(image_xscale)
				
							body.image_xscale = 50 * sign(image_xscale)
							body.image_yscale = 45
							body.xOffset = -25 * sign(image_xscale)
							body.yOffset = -125
				
							low.image_xscale = 40 * sign(image_xscale)
							low.image_yscale = 60
							low.xOffset = -17 * sign(image_xscale)
							low.yOffset = -160
						}
						else if (image_index > 3 and image_index < 6)
						{
							head.image_xscale = 30 * sign(image_xscale)
							head.image_yscale = 30
							head.xOffset = -60 * sign(image_xscale)
							head.yOffset = -87
							head.image_angle = 90 * sign(image_xscale)
				
							body.image_xscale = 50 * sign(image_xscale)
							body.image_yscale = 45
							body.xOffset = -35 * sign(image_xscale)
							body.yOffset = -125
				
							low.image_xscale = 75 * sign(image_xscale)
							low.image_yscale = 70
							low.xOffset = 0 * sign(image_xscale)
							low.yOffset = -170
						}
						else if (image_index > 5 and image_index < 9)
						{
							head.image_xscale = 30 * sign(image_xscale)
							head.image_yscale = 30
							head.xOffset = 15 * sign(image_xscale)
							head.yOffset = -80
				
							body.image_xscale = 50 * sign(image_xscale)
							body.image_yscale = 45
							body.xOffset = -5 * sign(image_xscale)
							body.yOffset = -125
				
							low.image_xscale = 95 * sign(image_xscale)
							low.image_yscale = 70
							low.xOffset = -73 * sign(image_xscale)
							low.yOffset = -170
						}
						else
						{
							head.image_xscale = 27 * sign(image_xscale)
							head.image_yscale = 18
							head.xOffset = 10 * sign(image_xscale)
							head.yOffset = -130
				
							body.image_xscale = 55 * sign(image_xscale)
							body.image_yscale = 20
							body.xOffset = -5 * sign(image_xscale)
							body.yOffset = -115
				
							low.image_xscale = 60 * sign(image_xscale)
							low.image_yscale = 70
							low.xOffset = -5 * sign(image_xscale)
							low.yOffset = -95
						}
					break
				}
			break
			
			case STATE_HURT:
				switch(dmg_state)
				{
					case EFF_NONE:
						if duck
						{
							head.image_xscale = 25 * sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -35 * sign(image_xscale)
							head.yOffset = -110
				
							body.image_xscale = 55 * sign(image_xscale)
							body.image_yscale = 25
							body.xOffset = -45 * sign(image_xscale)
							body.yOffset = -95
				
							low.image_xscale = 40 * sign(image_xscale)
							low.image_yscale = 50
							low.xOffset = 1 * sign(image_xscale)
							low.yOffset = -70
						}
						else
						{
							switch(where_hurt)
							{
								case HEAD:
									head.image_xscale = 30 * sign(image_xscale)
									head.image_yscale = 20
									head.xOffset = -32 * sign(image_xscale)
									head.yOffset = -160
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = 0 * sign(image_xscale)
									low.yOffset = -85
								break
								
								case MID:
									head.image_xscale = 32 * sign(image_xscale)
									head.image_yscale = 25
									head.xOffset = -20 * sign(image_xscale)
									head.yOffset = -165
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = -10 * sign(image_xscale)
									low.yOffset = -85
								break
								
								case LOW:
									head.image_xscale = 30 * sign(image_xscale)
									head.image_yscale = 20
									head.xOffset = -18 * sign(image_xscale)
									head.yOffset = -160
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = 0 * sign(image_xscale)
									low.yOffset = -85
								break
							}
						}
					break
					
					case EFF_KNOCKUP:
						if image_index < 9
						{
							head.image_xscale = 25 * -sign(image_xscale)
							head.image_yscale = 25
							head.xOffset = 50 * -sign(image_xscale)
							head.yOffset = -150
				
							body.image_xscale = 55 * -sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = 15 * -sign(image_xscale)
							body.yOffset = -140
				
							low.image_xscale = 70 * -sign(image_xscale)
							low.image_yscale = 50
							low.xOffset = -50 * -sign(image_xscale)
							low.yOffset = -135
						} else if ((image_index > 9) && (image_index < 18))
						{
							head.image_xscale = 25 * -sign(image_xscale)
							head.image_yscale = 25
							head.xOffset = 55 * -sign(image_xscale)
							head.yOffset = -50
				
							body.image_xscale = 40 * -sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = 5 * -sign(image_xscale)
							body.yOffset = -60
				
							low.image_xscale = 50 * -sign(image_xscale)
							low.image_yscale = 30
							low.xOffset = -50 * -sign(image_xscale)
							low.yOffset = -60
						} else
						{
							head.image_xscale = 20 * -sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -17 * -sign(image_xscale)
							head.yOffset = -120
				
							body.image_xscale = 60 * -sign(image_xscale)
							body.image_yscale = 50
							body.xOffset = -37 * -sign(image_xscale)
							body.yOffset = -105
				
							low.image_xscale = 80 * -sign(image_xscale)
							low.image_yscale = 30
							low.xOffset = -47 * -sign(image_xscale)
							low.yOffset = -55
						}
					break
					
					case EFF_KNOCKBACK:
						if image_index < 9
						{
							head.image_xscale = 25 * -sign(image_xscale)
							head.image_yscale = 25
							head.xOffset = 50 * -sign(image_xscale)
							head.yOffset = -150
				
							body.image_xscale = 55 * -sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = 15 * -sign(image_xscale)
							body.yOffset = -140
				
							low.image_xscale = 70 * -sign(image_xscale)
							low.image_yscale = 50
							low.xOffset = -50 * -sign(image_xscale)
							low.yOffset = -135
						} else if ((image_index > 9) && (image_index < 18))
						{
							head.image_xscale = 25 * -sign(image_xscale)
							head.image_yscale = 25
							head.xOffset = 55 * -sign(image_xscale)
							head.yOffset = -50
				
							body.image_xscale = 40 * -sign(image_xscale)
							body.image_yscale = 30
							body.xOffset = 5 * -sign(image_xscale)
							body.yOffset = -60
				
							low.image_xscale = 50 * -sign(image_xscale)
							low.image_yscale = 30
							low.xOffset = -50 * -sign(image_xscale)
							low.yOffset = -60
						} else
						{
							head.image_xscale = 20 * -sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -17 * -sign(image_xscale)
							head.yOffset = -120
				
							body.image_xscale = 60 * -sign(image_xscale)
							body.image_yscale = 50
							body.xOffset = -37 * -sign(image_xscale)
							body.yOffset = -105
				
							low.image_xscale = 80 * -sign(image_xscale)
							low.image_yscale = 30
							low.xOffset = -47 * -sign(image_xscale)
							low.yOffset = -55
						}
					break
					
					case EFF_PUSHBACK:
						if duck
						{
							head.image_xscale = 25 * sign(image_xscale)
							head.image_yscale = 20
							head.xOffset = -35 * sign(image_xscale)
							head.yOffset = -110
				
							body.image_xscale = 55 * sign(image_xscale)
							body.image_yscale = 25
							body.xOffset = -45 * sign(image_xscale)
							body.yOffset = -95
				
							low.image_xscale = 40 * sign(image_xscale)
							low.image_yscale = 50
							low.xOffset = 1 * sign(image_xscale)
							low.yOffset = -70
						}
						else
						{
							switch(where_hurt)
							{
								case HEAD:
									head.image_xscale = 30 * sign(image_xscale)
									head.image_yscale = 20
									head.xOffset = -32 * sign(image_xscale)
									head.yOffset = -160
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = 0 * sign(image_xscale)
									low.yOffset = -85
								break
								
								case MID:
									head.image_xscale = 32 * sign(image_xscale)
									head.image_yscale = 25
									head.xOffset = -20 * sign(image_xscale)
									head.yOffset = -165
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = -10 * sign(image_xscale)
									low.yOffset = -85
								break
								
								case LOW:
									head.image_xscale = 30 * sign(image_xscale)
									head.image_yscale = 20
									head.xOffset = -18 * sign(image_xscale)
									head.yOffset = -160
				
									body.image_xscale = 60 * sign(image_xscale)
									body.image_yscale = 55
									body.xOffset = -32 * sign(image_xscale)
									body.yOffset = -140
				
									low.image_xscale = 50 * sign(image_xscale)
									low.image_yscale = 60
									low.xOffset = 0 * sign(image_xscale)
									low.yOffset = -85
								break
							}
						}
					break
				}
			break
			
			case STATE_SPRINTING:
				
			break
			
			case STATE_STEPBACK:
				
			break
			
			case STATE_BLOCK:
				if !duck
				{
					head.image_xscale = 58 * sign(image_xscale)
					head.image_yscale = 20
					head.xOffset = -25 * sign(image_xscale)
					head.yOffset = -165
				
					body.image_xscale = 85 * sign(image_xscale)
					body.image_yscale = 45
					body.xOffset = -35 * sign(image_xscale)
					body.yOffset = -145
				
					low.image_xscale = 95 * sign(image_xscale)
					low.image_yscale = 75
					low.xOffset = -38 * sign(image_xscale)
					low.yOffset = -100
				}
				else
				{
					head.image_xscale = 25 * sign(image_xscale)
					head.image_yscale = 20
					head.xOffset = -7 * sign(image_xscale)
					head.yOffset = -110
				
					body.image_xscale = 35 * sign(image_xscale)
					body.image_yscale = 25
					body.xOffset = -7 * sign(image_xscale)
					body.yOffset = -95
				
					low.image_xscale = 40 * sign(image_xscale)
					low.image_yscale = 50
					low.xOffset = 1 * sign(image_xscale)
					low.yOffset = -70
				}
			break
		}
	}
	
	if character == CHAR_VIKTOR
	{
		switch (state)
		{
			case STATE_FREE:
				if landed
				{
					if !duck
					{
						head.image_xscale = 20 * sign(image_xscale)
						head.image_yscale = 25
						head.xOffset = -10 * sign(image_xscale)
						head.yOffset = -158
				
						body.image_xscale = 30 * sign(image_xscale)
						body.image_yscale = 50
						body.xOffset = -15 * sign(image_xscale)
						body.yOffset = -135
				
						low.image_xscale = 40 * sign(image_xscale)
						low.image_yscale = 50
						low.xOffset = 0 * sign(image_xscale)
						low.yOffset = -85
					}
					else
					{
						head.image_xscale = 20
						head.image_yscale = 20
						head.xOffset = -17
						head.yOffset = -120
				
						body.image_xscale = 60
						body.image_yscale = 50
						body.xOffset = -37
						body.yOffset = -105
				
						low.image_xscale = 80
						low.image_yscale = 30
						low.xOffset = -47
						low.yOffset = -55
					}
				}
				else
				{
					
				}
			break
			
			case STATE_ATTACK:
				head.image_xscale = 20 * sign(image_xscale)
				head.image_yscale = 25
				head.xOffset = -10 * sign(image_xscale)
				head.yOffset = -158
				
				body.image_xscale = 30 * sign(image_xscale)
				body.image_yscale = 50
				body.xOffset = -15 * sign(image_xscale)
				body.yOffset = -135
				
				low.image_xscale = 40 * sign(image_xscale)
				low.image_yscale = 50
				low.xOffset = 0 * sign(image_xscale)
				low.yOffset = -85
			break
			
			case STATE_HURT:
				switch(dmg_state)
				{
					case EFF_KNOCKUP:
						if image_index < 9
						{
							head.image_xscale = 25
							head.image_yscale = 25
							head.xOffset = 45
							head.yOffset = -120
				
							body.image_xscale = 40
							body.image_yscale = 30
							body.xOffset = 5
							body.yOffset = -120
				
							low.image_xscale = 50
							low.image_yscale = 30
							low.xOffset = -50
							low.yOffset = -115
						} else if ((image_index > 9) && (image_index < 18))
						{
							head.image_xscale = 25
							head.image_yscale = 25
							head.xOffset = 55
							head.yOffset = -50
				
							body.image_xscale = 40
							body.image_yscale = 30
							body.xOffset = 5
							body.yOffset = -60
				
							low.image_xscale = 50
							low.image_yscale = 30
							low.xOffset = -50
							low.yOffset = -60
						} else
						{
							head.image_xscale = 20
							head.image_yscale = 20
							head.xOffset = -17
							head.yOffset = -120
				
							body.image_xscale = 60
							body.image_yscale = 50
							body.xOffset = -37
							body.yOffset = -105
				
							low.image_xscale = 80
							low.image_yscale = 30
							low.xOffset = -47
							low.yOffset = -55
						}
					break
					
					case EFF_KNOCKBACK:
						if image_index < 9
						{
							head.image_xscale = 25
							head.image_yscale = 25
							head.xOffset = 45
							head.yOffset = -120
				
							body.image_xscale = 40
							body.image_yscale = 30
							body.xOffset = 5
							body.yOffset = -120
				
							low.image_xscale = 50
							low.image_yscale = 30
							low.xOffset = -50
							low.yOffset = -115
						} else if ((image_index > 9) && (image_index < 18))
						{
							head.image_xscale = 25
							head.image_yscale = 25
							head.xOffset = 55
							head.yOffset = -50
				
							body.image_xscale = 40
							body.image_yscale = 30
							body.xOffset = 5
							body.yOffset = -60
				
							low.image_xscale = 50
							low.image_yscale = 30
							low.xOffset = -50
							low.yOffset = -60
						} else
						{
							head.image_xscale = 20
							head.image_yscale = 20
							head.xOffset = -17
							head.yOffset = -120
				
							body.image_xscale = 60
							body.image_yscale = 50
							body.xOffset = -37
							body.yOffset = -105
				
							low.image_xscale = 80
							low.image_yscale = 30
							low.xOffset = -47
							low.yOffset = -55
						}
					break
				}
			break
		}
	}
	
	if character == CHAR_HIGHLANDER
	{
		switch (state)
		{
			case STATE_FREE:
				if landed
				{
					if !duck
					{
						head.image_xscale = 20 * sign(image_xscale)
						head.image_yscale = 25
						head.xOffset = -10 * sign(image_xscale)
						head.yOffset = -158
				
						body.image_xscale = 30 * sign(image_xscale)
						body.image_yscale = 50
						body.xOffset = -15 * sign(image_xscale)
						body.yOffset = -135
				
						low.image_xscale = 40 * sign(image_xscale)
						low.image_yscale = 50
						low.xOffset = 0 * sign(image_xscale)
						low.yOffset = -85
					}
					else
					{
						head.image_xscale = 20
						head.image_yscale = 20
						head.xOffset = -17
						head.yOffset = -120
				
						body.image_xscale = 60
						body.image_yscale = 50
						body.xOffset = -37
						body.yOffset = -105
				
						low.image_xscale = 80
						low.image_yscale = 30
						low.xOffset = -47
						low.yOffset = -55
					}
				}
				else
				{
					
				}
			break
			
			case STATE_ATTACK:
				head.image_xscale = 20 * sign(image_xscale)
				head.image_yscale = 25
				head.xOffset = -10 * sign(image_xscale)
				head.yOffset = -158
				
				body.image_xscale = 30 * sign(image_xscale)
				body.image_yscale = 50
				body.xOffset = -15 * sign(image_xscale)
				body.yOffset = -135
				
				low.image_xscale = 40 * sign(image_xscale)
				low.image_yscale = 50
				low.xOffset = 0 * sign(image_xscale)
				low.yOffset = -85
			break
			
			case STATE_HURT:
				switch(dmg_state)
				{
					case EFF_KNOCKUP:
						if image_index < 9
						{
							head.image_xscale = 25
							head.image_yscale = 25
							head.xOffset = 45
							head.yOffset = -120
				
							body.image_xscale = 40
							body.image_yscale = 30
							body.xOffset = 5
							body.yOffset = -120
				
							low.image_xscale = 50
							low.image_yscale = 30
							low.xOffset = -50
							low.yOffset = -115
						} else if ((image_index > 9) && (image_index < 18))
						{
							head.image_xscale = 25
							head.image_yscale = 25
							head.xOffset = 55
							head.yOffset = -50
				
							body.image_xscale = 40
							body.image_yscale = 30
							body.xOffset = 5
							body.yOffset = -60
				
							low.image_xscale = 50
							low.image_yscale = 30
							low.xOffset = -50
							low.yOffset = -60
						} else
						{
							head.image_xscale = 20
							head.image_yscale = 20
							head.xOffset = -17
							head.yOffset = -120
				
							body.image_xscale = 60
							body.image_yscale = 50
							body.xOffset = -37
							body.yOffset = -105
				
							low.image_xscale = 80
							low.image_yscale = 30
							low.xOffset = -47
							low.yOffset = -55
						}
					break
					
					case EFF_KNOCKBACK:
						if image_index < 9
						{
							head.image_xscale = 25
							head.image_yscale = 25
							head.xOffset = 45
							head.yOffset = -120
				
							body.image_xscale = 40
							body.image_yscale = 30
							body.xOffset = 5
							body.yOffset = -120
				
							low.image_xscale = 50
							low.image_yscale = 30
							low.xOffset = -50
							low.yOffset = -115
						} else if ((image_index > 9) && (image_index < 18))
						{
							head.image_xscale = 25
							head.image_yscale = 25
							head.xOffset = 55
							head.yOffset = -50
				
							body.image_xscale = 40
							body.image_yscale = 30
							body.xOffset = 5
							body.yOffset = -60
				
							low.image_xscale = 50
							low.image_yscale = 30
							low.xOffset = -50
							low.yOffset = -60
						} else
						{
							head.image_xscale = 20
							head.image_yscale = 20
							head.xOffset = -17
							head.yOffset = -120
				
							body.image_xscale = 60
							body.image_yscale = 50
							body.xOffset = -37
							body.yOffset = -105
				
							low.image_xscale = 80
							low.image_yscale = 30
							low.xOffset = -47
							low.yOffset = -55
						}
					break
				}
			break
		}
	}
	
	with(head)
	{
		x = other.x + xOffset
		y = other.y + yOffset
	}
	with(body)
	{
		x = other.x + xOffset
		y = other.y + yOffset
	}
	with(low)
	{
		x = other.x + xOffset
		y = other.y + yOffset
	}
	
}
