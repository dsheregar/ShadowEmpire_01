// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetMenuSprite(){
	switch(obj_main_menu.cur_index)
	{
		case MENU01:
			sprite_index = P1vsCOM
		break
		
		case MENU02:
			sprite_index = P1vsP2
			FreezeLastFrame()
		break
		
		case MENU03:
			sprite_index = Training
		break
		
		case MENU04:
			sprite_index = Settings
		break
		
		case MENU05:
			sprite_index = Exit
		break
	}
}