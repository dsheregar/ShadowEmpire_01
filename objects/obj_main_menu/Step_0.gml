/// @description Insert description here
// You can write your code in this editor
SetMenuSprite()
if (kcp(ord("W")) || gamepad_button_check_pressed(0, gp_padu))
	cur_index --

if (kcp(ord("S")) || gamepad_button_check_pressed(0,gp_padd))
	cur_index ++

cur_index = clamp(cur_index, 0, array_length_1d(menu))

if (kcp(ord("J")) || gamepad_button_check_pressed(0,gp_face1))
{
	switch (cur_index)
	{
		case 0: 
			global.game_type = GAME_P1vAI
			global.enemy_type = CONT_COM
			room_goto_next()
		break
		
		case 1:
			global.game_type = GAME_P1vP2
			global.enemy_type = CONT_P2
			room_goto_next()
		break
		
		case 4:
			game_end()
		break
		
		default: 
			room_goto_next()
		break
	}
}