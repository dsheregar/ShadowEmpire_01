/// @description Insert description here
// You can write your code in this editor
index = clamp(index, 0, MAX_BGD - 1)

if alarm[0] < 0
{
	if (kcp(ord("D")) || gamepad_button_check_pressed(0,gp_padr))
	{
		if !battle_ready
		{
			if index == 2
				index = index
			else
				index++
		}
	}
	if (kcp(ord("A")) || gamepad_button_check_pressed(0,gp_padl))
	{
		if !battle_ready
		{
			if index == 0
				index = index
			else
				index--
		}
	}
	if (kcp(ord("W")) || gamepad_button_check_pressed(0,gp_padu))
	{
		//
	}
	if (kcp(ord("S")) || gamepad_button_check_pressed(0,gp_padd))
	{
		//
	}
	if kcp(ord("J")) || gamepad_button_check_pressed(0,gp_face1)
	{
		battle_ready = true
		global.background = index
	}
}

if battle_ready
{
	if alarm[0] < 0
		alarm[0] = room_speed * 2
}