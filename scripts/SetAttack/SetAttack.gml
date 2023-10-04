// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetAttack(){
	atk_type = argument0
	if !duck
		state = STATE_ATTACK
	else state = STATE_ATTACK_DUCK
}