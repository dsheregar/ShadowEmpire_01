// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doubletap(){
	var k = argument0
	
	if last_key = k and last_key_cd < DBLTAP_CD
	{
		if kcp(k)
		{
			return true
		}
		return false
	}
	return false
}