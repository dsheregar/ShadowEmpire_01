/// @description Insert description here
// You can write your code in this editor

var width = room_width - 116
draw_set_font(FightingFont_MainMenu)
draw_set_halign(fa_center)
draw_set_color(c_red)
draw_text(width , 300, "Character select")

var second_char = (global.game_type == GAME_P1vP2)?p2_index:com_index

draw_sprite_ext(portraits[p1_index], 0, 0, 0, 1, 1, 0, c_white, 1)
draw_sprite_ext(portraits[second_char], 0, width*2, 0, -1, 1, 0, c_white, 1)

for (var i = 0; i < MAX_CHARS; i++)
{
	if (i > MAX_CHARS/2-1)
		draw_sprite(icons[i], 0, 471+71*i - 425, 525)
	else
		draw_sprite(icons[i], 0, 471+71*i, 400)
	
	if (i == p1_index)
	{
		if (i <= MAX_CHARS/2-1)
		{
			draw_set_color(!p1_ready?c_red:c_white)
			draw_set_font(FightingFont_Index)
			draw_text(471+71*i+32, 380, "P1")
		}
		else
		{
			draw_set_color(!p1_ready?c_red:c_white)
			draw_set_font(FightingFont_Index)
			draw_text(471+71*i+32 - 426, 505, "P1")
		}
	}
	
	if (i == second_char)
	{
		if (i <= MAX_CHARS/2-1)
		{
			draw_set_color(!p2_ready?c_blue:c_white)
			draw_set_font(FightingFont_Index)
			draw_text(471+71*i+32, 480, (global.game_type == GAME_P1vP2)?"P2":"COM")
		}
		else
		{
			draw_set_color(!p2_ready?c_blue:c_white)
			draw_set_font(FightingFont_Index)
			draw_text(471+71*i+32 - 427, 605, (global.game_type == GAME_P1vP2)?"P2":"COM")
		}
	}
}

draw_set_halign(fa_left)