// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RandomStandingAttack(){
	
	switch (irandom(3))
	{
		case ATK_LP:
			SetAttack(ATK_LP)
			wait(100)
		break
		
		case ATK_RP:
			SetAttack(ATK_RP)
			wait(100)
		break
		
		case ATK_LK:
			SetAttack(ATK_LK)
			wait(100)
		break
		
		case ATK_RK:
			SetAttack(ATK_RK)
			wait(100)
		break
	}

	if state == STATE_ATTACK
	{
		if landed
			hspd = 0
		if AnimEnd()
			{
				RandomizebaseId()
				state = STATE_FREE
				Idle()
			}
	}
}