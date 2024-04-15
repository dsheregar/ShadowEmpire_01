/// @description Insert description here
// You can write your code in this editor

global.game_type = GAME_P1vP2
global.enemy_type = CONT_P2

window_set_fullscreen(true)

names = [
			"Ranjit",
			"Miguel",
			"Viktor",
			"Highlander",
			"Liz",
			"Natsu",
			"Leon",
			"Rania",
			"Cho-Clo",
			"Kaida",
			"Seth",
			"Jeremiah"
		]

icons = [
			Icon_Ranjit,
			Icon_Miguel,
			Icon_Viktor,
			Icon_Highlander,
			Icon_Liz,
			Icon_Natsu,
			Icon_Leon,
			Icon_Rania,
			Icon_ChoClo,
			Icon_Kaida,
			Icon_Seth,
			Icon_Jeremiah
		]
portraits = [
				Portrait_Ranjit,
				Portrait_Miguel,
				Portrait_Viktor,
				Portrait_Highlander,
				Portrait_Liz,
				Portrait_Natsu,
				Portrait_Leon,
				Portrait_Rania,
				Portrait_ChoClo,
				Portrait_Kaida,
				Portrait_Seth,
				Portrait_Jeremiah
			]

p1_index = 0
p2_index = 0
com_index = 0

p1_ready = false
p2_ready = false
com_ready = false

global.p1_char = CHAR_RANJIT
global.p2_char = CHAR_RANJIT
global.ai_char = CHAR_RANJIT