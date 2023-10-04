/// @description Insert description here
// You can write your code in this editor

p1_index = clamp(p1_index, 0, MAX_CHARS - 1)
p2_index = clamp(p2_index, 0, MAX_CHARS - 1)
com_index = clamp(com_index, 0, MAX_CHARS - 1)

if alarm[0] < 0
{
	if (kcp(ord("D")) || gamepad_button_check_pressed(0,gp_padr))
	{
		if !p1_ready
		{
			if p1_index == 11
				p1_index = p1_index
			else
				p1_index++
		}
		else
		{
			if com_index == 11
				com_index = com_index
			else
				com_index++
		}
	}
	if (kcp(ord("A")) || gamepad_button_check_pressed(0,gp_padl))
	{
		if !p1_ready
		{
			if p1_index == 0
				p1_index = p1_index
			else
				p1_index--
		}
		else
		{
			if com_index == 0
				com_index = com_index
			else
				com_index--
		}
	}
	if (kcp(ord("W")) || gamepad_button_check_pressed(0,gp_padu))
	{
		if !p1_ready
		{
			if p1_index < 6
				p1_index = p1_index
			else
				p1_index -= 6
		}
		else
		{
			if com_index < 6
				com_index = com_index
			else
				com_index -= 6
		}
	}
	if (kcp(ord("S")) || gamepad_button_check_pressed(0,gp_padd))
	{
		if !p1_ready
		{
			if p1_index >= 6
				p1_index = p1_index
			else
				p1_index += 6
		}
		else
		{
			if com_index >= 6
				com_index = com_index
			else
				com_index += 6
		}
	}
	if kcp(ord("J")) || gamepad_button_check_pressed(0,gp_face1)
	{
		if global.game_type == GAME_P1vAI
		{
			if !p1_ready
			{
				p1_ready = true
				global.p1_char = p1_index
			}
			else
			{
				com_ready = true
				global.ai_char = com_index
			}
		}
		else
		{
			p1_ready = true
			global.p1_char = p1_index
		}
	}
}



if global.game_type = GAME_P1vP2
{
	if !p2_ready
	{
		if (kcp(vk_right) || gamepad_button_check_pressed(1,gp_padr))
		{
			if p2_index == 11
				p2_index = p2_index
			else
				p2_index++
		}

		if (kcp(vk_left) || gamepad_button_check_pressed(1,gp_padl))
		{
			if p2_index == 0
				p2_index = p2_index
			else
				p2_index--
		}
		
		if (kcp(vk_up) || gamepad_button_check_pressed(1,gp_padu))
		{
			if p2_index < 6
				p2_index = p2_index
			else
				p2_index -= 6
		}

		if (kcp(vk_down) || gamepad_button_check_pressed(1,gp_padd))
		{
			if p2_index >= 6
				p2_index = p2_index
			else
				p2_index += 6
		}

		if (kcp(vk_numpad1) || gamepad_button_check_pressed(1,gp_face1))
		{
			p2_ready = true
			global.p2_char = p2_index
		}
	}
}

if global.game_type == GAME_P1vP2
{
	if p1_ready and p2_ready
	{
		if alarm[0] < 0
			alarm[0] = room_speed * 2
	}
}
else
{
	if p1_ready and com_ready
	{
		if alarm[0] < 0
			alarm[0] = room_speed * 2
	}
}