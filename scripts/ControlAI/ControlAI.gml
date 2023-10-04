// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ControlAI(){
	HandleHurt()
	
	Idle()
	
	if AnimEnd()
		state = STATE_FREE
	
	if landed and state == STATE_FREE
		image_xscale = (opponent.x > x)?1:-1
	
	if distance_to_object(obj_player) > 15
		WalkForward()
	else
	{
		//RandomStandingAttack()
		SetAttack(ATK_LP)
		wait(1000)
		SetAttack(ATK_RP)
	}
	
}