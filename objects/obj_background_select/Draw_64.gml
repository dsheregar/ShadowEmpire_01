/// @description Insert description here
// You can write your code in this editor

var width = room_width - 116
//draw_set_font(fnt_main)
draw_set_halign(fa_center)
draw_set_color(c_red)
draw_text(width , 350, "Background Select")

for (var i = 0; i < MAX_BGD; i++)
{
	draw_sprite(icons[i], 0,150 + 250*i, 400)
	
	if (i == index)
	{
		draw_set_color(c_red)
		draw_text(200 + 250*i, 380, "P1")
		draw_set_color(c_white)
	}
}

if battle_ready
	draw_text(width, 300, "GET READY")

draw_set_halign(fa_left)