// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RenderHP_Test(){
	//Draw P1 Healthbar
	var x_margin = 10
	var y_margin = 20
	var sp_height = sprite_get_height(spr_healthbar)
	var sp_width = sprite_get_width(spr_healthbar)
	draw_sprite_ext(spr_healthbar, 0, x_margin, y_margin, 2, 2, 0, c_white, 1)
	draw_sprite_part_ext(spr_healthbar, 1, 0, 0, sp_width * (p1.hp/MAX_HP), sp_height, x_margin, y_margin, 2, 2, c_green, 1)
	
	//Draw P2 Healthbar
	//var width = view_wport[0]
	//draw_sprite_ext(spr_healthbar, 0, width - x_margin, y_margin, -2, 2, 0, c_white, 1)
	//draw_sprite_part_ext(spr_healthbar, 1, 0, 0, sp_width * (p2.hp/MAX_HP), sp_height, width - x_margin, y_margin, -2, 2, c_green, 1)
}