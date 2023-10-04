// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CharacterControl(){
	var forward_key = sign(image_xscale == 1)?right:left
	var forward_key_gp = sign(image_xscale == 1)?gp_padr:gp_padl
	var backward_key = sign(image_xscale != 1)?right:left
	var backward_key_gp = sign(image_xscale != 1)?gp_padr:gp_padl
	
	switch (state){
		case STATE_FREE:
			//For the State Free state, move the character freely with its default animations
			can_attack = true
			if landed
			{
				if !duck
				{
					if (gc(gp_padr) || gc(gp_padl))
						hspd = WALK_SPD * (gc(gp_padr) - gc(gp_padl))
					else
						hspd = WALK_SPD * (kc(right) - kc(left))
				}
				else
					hspd = 0
				
				//Jumping
				if (kcp(up) || gcp(gp_padu))
				{
					vspd = JUMP_FORCE
					landed = false
				}
				
				//Ducking
				duck = kc(down)?kc(down):gc(gp_padd)
				
				//Sprinting
				if (doubletap(forward_key) || doubletap_gp(forward_key_gp))
					{state = STATE_SPRINTING ; break}
				
				//Step Back
				if (doubletap(backward_key) || doubletap_gp(backward_key_gp))
					{state = STATE_STEPBACK ; break}
				
				//Throw
				if (kcp(lp) and kcp(lk)) || (gcp(gp_face3) and gcp(gp_face1))
				{
					throw_dir = THROW_FORWARD
					state = STATE_THROW
					break
				}
				if (kcp(rp) and kcp(rk)) || (gcp(gp_face4) and gcp(gp_face2))
				{
					throw_dir = THROW_BACKWARD
					state = STATE_THROW
					break
				}
				
				//Combos
				if ((two_combo(forward_key, lp) || two_combo_gp(forward_key_gp, gp_face3)) && character == CHAR_RANJIT)
					{hspd = 0; state = HEAD_SLAMMER; combo = "head_slammer"; break}
				
				
				//Stances
				if (((kcp(lk) and kcp(rk)) || (gcp(gp_face1) and gcp(gp_face2))) && character == CHAR_RANJIT)
					{hspd = 0; state = BOAR_STANCE; break}
			}
			else
			{
				//in the air
			}
			
			//Attacks
			if !duck
			{
				if (kcp(lp) || gcp(gp_face3))
					{SetAttack(ATK_LP) ;  break}
				else if (kcp(rp) || gcp(gp_face4))
					{SetAttack(ATK_RP) ;  break}
				else if (kcp(lk) || gcp(gp_face1))
					{SetAttack(ATK_LK) ;  break}
				else if (kcp(rk) || gcp(gp_face2))
					{SetAttack(ATK_RK) ;  break}
			} else
			{
				if (kcp(lp) || gcp(gp_face3))
					{SetAttack(ATK_LP) ; break}
				else if (kcp(rp) || gcp(gp_face4))
					{SetAttack(ATK_RP) ; break}
				else if (kcp(lk) || gcp(gp_face1))
					{SetAttack(ATK_LK) ; break}
				else if (kcp(rk) || gcp(gp_face2))
					{SetAttack(ATK_RK) ; break}
			}
			
			
			
		break
		
		case STATE_ATTACK: 
			if landed
				hspd = 0
			if AnimEnd()
			{
				RandomizebaseId()
				state = STATE_FREE
			}
		break
		
		case STATE_ATTACK_DUCK:
			if landed
				hspd = 0
			if AnimEnd()
			{
				if duck
				{
					sprite_index = sp_duck
					image_index = image_number - 1
				}
				RandomizebaseId()
				state = STATE_FREE
			}
		break
		
		case STATE_SPRINTING:
			if landed
				hspd = SPRINT_SPD * sign(image_xscale)
			if AnimEnd()
			{
				if (!kc(forward_key) || !gc(forward_key_gp))
					{state = STATE_FREE; break}
				else
					state = STATE_SPRINTING
			}
		break
		
		case STATE_STEPBACK:
			if landed
				hspd = -SPRINT_SPD * sign(image_xscale)
			if AnimEnd()
				{state = STATE_FREE; break}
		break
		
		case STATE_THROW:
			if landed
				{
					if (character == CHAR_MIGUEL)
						hspd = 1 * sign(image_xscale)
					else
						hspd = 0
				}
			if AnimEnd()
				{RandomizebaseId(); state = STATE_FREE; break}
		break
		
		case STATE_HURT:
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
					break
				}
			}
		break
		
		case STATE_BLOCK:
			if landed
				hspd = 0
			if opponent.state == STATE_THROW
				{
					image_index = 0
					state = STATE_HURT
				}
			if AnimEnd()
			{
				if duck
				{
					sprite_index = sp_duck
					image_index = image_number - 1
				}
				state = STATE_FREE
				break
			}
		break
		
		#region	//Combos
		
			//Ranjit Combos
			case HEAD_SLAMMER:
				if AnimEnd()
					{
						if (kc(rk) || gc(gp_face2))
							{RandomizebaseId(); state = AERIAL_ROUNDHOUSE; combo = "aerial_roundhouse"; break}
						if (!kc(lp) || !gc(gp_face3))
							{RandomizebaseId(); state = STATE_FREE; combo = ""; break}
					}
			break
		
			case AERIAL_ROUNDHOUSE:
				if landed
					hspd = 2 * sign(image_xscale)
				if AnimEnd()
					{RandomizebaseId(); state = STATE_FREE; combo = ""; break}
			break
		
		#endregion
		
		#region //Stances
		
			case BOAR_STANCE: 
				if landed
					hspd = 0
				if AnimEnd()
				{
					FreezeLastFrame()
					if (kc(backward_key) || gc(backward_key_gp))
						state = STATE_FREE
				}
			break
		
		#endregion
	}
	if landed and state == STATE_FREE
		image_xscale = (opponent.x > x)?1:-1
}