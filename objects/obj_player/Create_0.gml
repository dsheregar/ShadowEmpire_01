/// @description Variables

character = CHAR_RANJIT	//Default character sprite for P1
controller = CONT_P1	//Controller ID for P1
state = STATE_FREE		//State of character (REFER TO THE SCRIPT "AnimationControl")
dmg_state = EFF_NONE
where_hurt = MID

hspd = 0				//Default horizontal speed for all
vspd = 0				//Default vertical speed for all
grv = GRAVITY_FORCE		//Default gravity speed for all (REFER TO THE SCRIPT "Macros")

landed = false
duck = false
can_attack = true
atk_type = ATK_LP
throw_dir = THROW_FORWARD

last_key = noone
last_key_gp = noone
last_key_cd = 0
last_key_cd_gp = 0

combo = noone

hit_base_id = -1
last_hit_id = -2

//Stats
hp = 100