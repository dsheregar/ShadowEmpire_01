/// @description Insert description here
// You can write your code in this editor
var backward_key = sign(owner.image_xscale != 1)?owner.right:owner.left
var backward_key_gp = sign(owner.image_xscale != 1)?gp_padr:gp_padl
controller = owner.controller

#region
if other.owner.id == owner.id
	exit

//Exit
if owner.last_hit_id == other._id
	exit
#endregion

//Block?
if (kc(backward_key) or gc(backward_key_gp)) and owner.landed and owner.state = STATE_FREE
{
	if owner.duck
		owner.state = STATE_BLOCK
	else
	{
		if other.low
			owner.state = STATE_HURT
		else
			owner.state = STATE_BLOCK
	}
}

if owner.state == STATE_BLOCK
	exit

//Take damage
owner.last_hit_id = other._id
audio_play_sound(AttackLanded, 0, false); 

if owner.image_xscale == 1
	instance_create_layer(other.x+10, other.y, "Effects", obj_normalpuncheffect_player2)
else
	instance_create_layer(other.x+10, other.y, "Effects", obj_normalpuncheffect_player1)

//Damage the player
owner.hp -= other.dmg

//Check for effect
switch (other.effect)
{
	case EFF_NONE:
		//Do nothing
		owner.dmg_state = EFF_NONE
	break
	
	case EFF_KNOCKUP:
		owner.vspd = JUMP_FORCE
		owner.hspd = -2 * sign(owner.image_xscale)
		owner.dmg_state = EFF_KNOCKUP
	break
	
	case EFF_KNOCKBACK:
		var d = other.owner.throw_dir
		if d == THROW_BACKWARD
		{
			owner.image_xscale = -owner.image_xscale
			owner.hspd = -6 * sign(owner.image_xscale)
		}else
			owner.hspd = -3 * sign(owner.image_xscale)
		owner.dmg_state = EFF_KNOCKBACK
	break
	
	case EFF_PUSHBACK:
		owner.hspd = -5 * sign(owner.image_xscale)
		owner.dmg_state = EFF_PUSHBACK
	break
}

if owner.landed
{
	if ((owner.dmg_state == EFF_KNOCKBACK) or (owner.dmg_state == EFF_KNOCKUP)) and (owner.image_index >= 10)
		owner.hspd = -SPRINT_SPD * sign(owner.image_xscale)
	if ((owner.dmg_state == EFF_KNOCKBACK) or (owner.dmg_state == EFF_KNOCKUP)) and (owner.image_index >= 18)
		owner.dmg_state = EFF_NONE
	owner.state = STATE_HURT
	owner.where_hurt = LOW
	owner.image_index = 0
}
if !owner.landed{
	owner.vspd = JUMP_FORCE
	owner.hspd = -SPRINT_SPD/2 * sign(owner.image_xscale)
	owner.image_index = 0
}
with other
	instance_destroy()