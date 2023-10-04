// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doubletap_gp(){
	var k = argument0
	
	if last_key_gp = k and last_key_cd_gp < DBLTAP_CD
	{
		if gcp(k)
		{
			return true
		}
		return false
	}
	return false
}