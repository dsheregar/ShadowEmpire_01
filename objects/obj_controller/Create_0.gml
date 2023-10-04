/// @description Spawn Players

//Spawn Player 1 in the instances_1 layer of the Room at the coordinates (first two numbers)
//Use the object obj_player to determine what sprites to use (now set as Ranjit)
p1 = instance_create_layer(room_width/2-100, 100, "Instances_1", obj_player)
p2 = instance_create_layer(room_width/2+100, 100, "Instances_1", obj_player2)
p2.image_xscale = -1
p2.controller = global.enemy_type
//p2.controller = CONT_P2


p1.opponent = p2
p2.opponent = p1

p1.character = global.p1_char
p2.character = (global.game_type == GAME_P1vP2)?global.p2_char:global.ai_char

with p1
	HandleSprites(character)	//Depending on the player's character, refer to the script "HandleScripts"

with p2
	HandleSprites(character)



//Create the camera
cam = instance_create_layer(room_width/2, room_height/2, "Instances_1", obj_camera)