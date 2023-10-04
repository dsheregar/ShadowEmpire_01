/// @description Insert description here
// You can write your code in this editor

switch(room_get_name(room))
{
	case "rm_main_menu":
		audio_stop_sound(SinCity)
	break
	
	case "rm_char_select":
		audio_stop_sound(MiyagiMagic)
	break
	
	case "rm_kambalaBackground":
		audio_stop_sound(KambalaBGM)
	break
	
	case "rm_neonrooftopsBackground":
		audio_stop_sound(NeonRooftopsBGM)
	break
	
	case "rm_militarybaseBackground":
		audio_stop_sound(MilitaryBaseBGM)
	break
}