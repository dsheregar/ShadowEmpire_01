/// @description Character control

#region

//If the controller ID for this player is P1, then use the WASD keys to move
//NOTE: ALLOW GAMEPAD CODE HERE
right = vk_right
left = vk_left
up = vk_up
down = vk_down


lp = vk_numpad4
rp = vk_numpad5
lk = vk_numpad1
rk = vk_numpad2

#endregion

//Render Hurtboxes
RenderHurtboxes()

//Hit Manager
HitManager()

//Character Control
CharacterControl()

//Animation Control
AnimationControl()

//Collision and Movements
CollisionAndMovements()

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