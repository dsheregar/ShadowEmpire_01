// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RenderHit(){
	var indexes = argument0	
		for (var i = 0; i < array_length_1d(indexes); i++)
		{
			if round(image_index) == indexes[i]
			{
				//Create hit
				if (audio_is_playing(AttackThrown) == false)
					audio_play_sound(AttackThrown, 0, false)
					
				var h = CreateHit(argument4, argument5, argument3, argument1, argument2)
				
				h.image_xscale = argument6
				h.image_yscale = argument7
				h.image_angle = argument8
				
				h._id = hit_base_id * round(image_index)
				
				switch (state)
				{
					case STATE_ATTACK:
						if (character == CHAR_RANJIT && atk_type == ATK_LK)
							h.effect = EFF_KNOCKUP
					break
					
					case STATE_ATTACK_DUCK:
						if (character == CHAR_RANJIT && atk_type == ATK_LK)
							h.effect = EFF_PUSHBACK
					break
					
					case STATE_THROW:
						if i == array_length_1d(indexes) - 1
							h.effect = EFF_KNOCKBACK
					break
					
					case AERIAL_ROUNDHOUSE:
						if i == array_length_1d(indexes) - 1
							h.effect = EFF_KNOCKUP
					break
				}
			}
		}
}