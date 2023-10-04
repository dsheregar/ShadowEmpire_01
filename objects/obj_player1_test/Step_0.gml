/// @description Character control

#region

//If the controller ID for this player is P1, then use the WASD keys to move
//NOTE: ALLOW GAMEPAD CODE HERE
right = (controller == CONT_P1)?ord("D"):vk_right
left = (controller == CONT_P1)?ord("A"):vk_left
up = (controller == CONT_P1)?ord("W"):vk_up
down = (controller == CONT_P1)?ord("S"):vk_down


lp = (controller == CONT_P1)?ord("U"):vk_numpad4
rp = (controller == CONT_P1)?ord("I"):vk_numpad1
lk = (controller == CONT_P1)?ord("J"):vk_numpad5
rk = (controller == CONT_P1)?ord("K"):vk_numpad2

#endregion

//Render Hurtboxes
RenderHurtboxes_Test()

//Hit Manager
HitManager_Test()

//Animation Control
AnimationControl()

//Collision and Movements
CollisionAndMovements_Test()

//check for last key
check_last_key(right)
check_last_key(left)
check_last_key(up)
check_last_key(down)
check_last_key(lp)
check_last_key(rp)
check_last_key(lk)
check_last_key(rk)

check_last_key_gp(gp_padr)
check_last_key_gp(gp_padl)
check_last_key_gp(gp_padu)
check_last_key_gp(gp_padd)
check_last_key_gp(gp_face3)
check_last_key_gp(gp_face4)
check_last_key_gp(gp_face1)
check_last_key_gp(gp_face2)

//Timers
last_key_cd++
last_key_cd_gp++

//Test Environment
state = STATE_ATTACK
image_index = 4 //To freeze each frame
landed = 1
duck = 0
atk_type = 3
throw_dir = 1
dmg_state = EFF_NONE
where_hurt = 1
