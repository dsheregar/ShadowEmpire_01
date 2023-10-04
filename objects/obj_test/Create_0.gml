/// @description Spawn Players

//Spawn Player 1 in the instances_1 layer of the Room at the coordinates (first two numbers)
//Use the object obj_player to determine what sprites to use (now set as Ranjit)
p1 = instance_create_layer(room_width/2-100, 300, "Instances", obj_player1_test)

p1.character = CHAR_RANJIT


with p1
	HandleSprites(character)	//Depending on the player's character, refer to the script "HandleScripts"




//Create the camera
cam = instance_create_layer(room_width/2, room_height/2, "Instances", obj_camera)

//CHECK THESE SCRIPTS BEFORE ENDING TEST
//CreateHurtboxes
//CreateHit
//CollisionAndMovements
//RenderHP