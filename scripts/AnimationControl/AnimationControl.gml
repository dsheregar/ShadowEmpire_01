// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AnimationControl(){
	//Animation sprites for each state the character is in
	
	switch (state) {
		case STATE_FREE:
			if landed
			{
				if !duck
					{
						//For the State Free state, move the character freely with its default animations
						if hspd == 0
							SetSprite(sp_idle)	//Argument A is idle animation facing right, other is facing left
						else
							//First line are sprites for walking forward and backward, second line are mirrored sprites
							sprite_index = (sign(hspd) == sign(image_xscale))?sp_forward:sp_backward

					}
					else
					{
						//Ducking
						if !SetSprite(sp_duck)
							FreezeLastFrame()
					}
			}
			else {
				//In the air
				if vspd > 0
					SetSprite(sp_fall)	//Sprite for falling
				else
					SetSprite(sp_jump)	//Sprite for jumping (MAY NOT BE USED)
			}
		break
		
		case STATE_ATTACK:
			if !can_attack
				exit
			if landed
				SetSprite(sp_attack[atk_type])	//Arrays of attacks and thier mirrors
			can_attack = false
			
		break
		
		case STATE_ATTACK_DUCK:
			if !can_attack
				exit
			if landed
				SetSprite(sp_attack_duck[atk_type])	//Arrays of attacks and thier mirrors
			can_attack = false
		break
		
		case STATE_SPRINTING:
			if landed
				SetSprite(sp_sprinting)
		break
		
		case STATE_STEPBACK:
			if landed
				SetSprite(sp_backstep)
		break
		
		case STATE_THROW:
			if landed
				SetSprite(sp_throw[throw_dir])
		break
		
		case STATE_HURT:
			switch(dmg_state)
				{
					case EFF_NONE:
						if landed
							SetSprite(duck?sp_hurt_duck:sp_hurt[where_hurt])
					break
					
					case EFF_KNOCKUP:
						if landed
							SetSprite(sp_ko)
					break
				
					case EFF_KNOCKBACK:
						if landed
						{
							if opponent.throw_dir == THROW_FORWARD
								SetSprite(sp_ko)
							else
								SetSprite(sp_ko)
						}
					break
					
					case EFF_PUSHBACK:
						if landed
							SetSprite(duck?sp_hurt_duck:sp_hurt[where_hurt])
					break
				}
		break
		
		case STATE_BLOCK:
			if duck
				SetSprite(sp_block_duck)
			else
				SetSprite(sp_block)
		break
		
		#region //Combos
		
			//Ranjit Combos
			case HEAD_SLAMMER:
				SetSprite(Ranjit_HeadSlammer)
			break
		
			case AERIAL_ROUNDHOUSE:
				SetSprite(Ranjit_AerialRoundhouse)
			break
		
		#endregion
		
		#region //Stances
		
			case BOAR_STANCE: 
				if landed
					SetSprite(sp_transition_boar)
			break
		
		#endregion
	}
}