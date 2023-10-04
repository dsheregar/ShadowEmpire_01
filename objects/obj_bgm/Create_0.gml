/// @description Insert description here
// You can write your code in this editor
//BGM

switch(room_get_name(room))
{
	case "rm_main_menu":
		audio_play_sound(SinCity, 0, true)
	break
	
	case "rm_char_select":
		audio_play_sound(MiyagiMagic, 0, true)
	break
	
	case "rm_kambalaBackground":
		audio_play_sound(KambalaBGM, 0, true)
	break
	
	case "rm_neonrooftopsBackground":
		audio_play_sound(NeonRooftopsBGM, 0, true)
	break
	
	case "rm_militarybaseBackground":
		audio_play_sound(MilitaryBaseBGM, 0, true)
	break
}