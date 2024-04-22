function HandleSprites(){
	//For each case, display what sprite is being used for each character
	
	switch (argument0)
	{
		case CHAR_RANJIT: 
		sp_idle = Ranjit_Idle
		sp_forward = Ranjit_Forward
		sp_backward = Ranjit_Backward
		sp_fall = Ranjit_Idle
		sp_jump = Ranjit_Idle
		sp_duck = Ranjit_Duck
		sp_block = Ranjit_Block
		sp_block_duck = Ranjit_BlockDuck
		sp_sprinting = Ranjit_Sprinting
		sp_backstep = Ranjit_Backstep
		
		sp_throw = [Ranjit_ThrowForward, Ranjit_ThrowBackward]
		throw_indexes = [[4], [4]]
		
		sp_hurt_u = Ranjit_HurtHead
		sp_ko = Ranjit_Knockout
		
		sp_attack = [Ranjit_LeftPunch, Ranjit_RightPunch, Ranjit_LeftKick, Ranjit_RightKick]
		attack_indexes = [[2], [2], [4], [2]]
		sp_attack_duck = [Ranjit_LowLeftPunch, Ranjit_LowRightPunch, Ranjit_LowLeftKick, Ranjit_LowRightKick]
		attack_duck_indexes = [[2], [2], [2], [2]]
		
		sp_hurt = [Ranjit_HurtHead, Ranjit_HurtMid, Ranjit_HurtLow]
		sp_hurt_duck = Ranjit_HurtDuck
		
		head_slammer_index = [4]
		aerial_roundhouse_index = [3]
		
		sp_transition_boar = Ranjit_TransitionToBoarStance
		
		break
		
		case CHAR_MIGUEL:
		sp_idle = Miguel_Idle
		sp_forward = Miguel_Walking
		sp_backward = Miguel_Walking
		sp_fall = Miguel_Idle
		sp_jump = Miguel_Idle
		sp_duck = Miguel_Duck
		sp_block = Miguel_Block
		sp_block_duck = Miguel_BlockDuck
		sp_sprinting = Miguel_Sprinting
		sp_backstep = Miguel_Backstep
		
		sp_throw = [Miguel_ThrowForward, Miguel_ThrowBackward]
		throw_indexes = [[4], [5]]
		
		sp_hurt_u = Miguel_Idle
		sp_ko = Miguel_Knockout
		
		sp_attack = [Miguel_LeftPunch, Miguel_RightPunch, Miguel_LeftKick, Miguel_RightKick]
		attack_indexes = [[2], [2], [2], [2]]
		sp_attack_duck = [Miguel_LowLeftPunch, Miguel_LowRightPunch, Miguel_LowFlex, Miguel_LowFlex]
		attack_duck_indexes = [[2], [2], [2, 18], [2, 18]]
		
		sp_hurt = [Miguel_HurtHead, Miguel_HurtMid, Miguel_HurtLow]
		sp_hurt_duck = Miguel_HurtDuck
		
		break
		
		case CHAR_VIKTOR: 
		sp_idle = Viktor_Idle
		sp_forward = Viktor_Forward
		sp_backward = Viktor_Backward
		sp_fall = Viktor_Idle
		sp_jump = Viktor_Idle
		sp_duck = Viktor_Duck
		sp_block = Viktor_Block
		sp_block_duck = Viktor_BlockDuck
		sp_sprinting = Ranjit_Sprinting
		sp_backstep = Ranjit_Idle
		
		sp_throw = [Viktor_ThrowForward, Ranjit_ThrowBackward]
		throw_indexes = [[4], [4]]
		
		sp_hurt_u = Ranjit_HurtHead
		sp_ko = Ranjit_Knockout
		
		sp_attack = [Viktor_LeftPunch, Viktor_RightPunch, Viktor_LeftKick, Viktor_RightKick]
		attack_indexes = [[0], [2], [0], [0]]
		sp_attack_duck = [Viktor_LowLeftPunch, Viktor_LowRightPunch, Ranjit_LowLeftKick, Ranjit_LowRightKick]
		attack_duck_indexes = [[1], [1], [2], [2]]
		
		sp_hurt = [Viktor_HurtHead, Viktor_LeftPunch, Viktor_LeftPunch]
		sp_hurt_duck = Viktor_Idle
		
		head_slammer_index = [4]
		aerial_roundhouse_index = [3]
		
		break
		
		case CHAR_HIGHLANDER: 
		sp_idle = Highlander_Idle
		sp_forward = Highlander_Forward
		sp_backward = Highlander_Backward
		sp_fall = Highlander_Idle
		sp_jump = Ranjit_Idle
		sp_duck = Ranjit_Duck
		sp_block = Ranjit_Block
		sp_block_duck = Ranjit_BlockDuck
		sp_sprinting = Ranjit_Sprinting
		sp_backstep = Ranjit_Idle
		
		sp_throw = [Ranjit_ThrowForward, Ranjit_ThrowBackward]
		throw_indexes = [[4], [4]]
		
		sp_hurt_u = Ranjit_HurtHead
		sp_ko = Ranjit_Knockout
		
		sp_attack = [Highlander_LeftPunch, Highlander_RightPunch, Highlander_Kick, Highlander_Kick]
		attack_indexes = [[4], [2], [2], [2]]
		sp_attack_duck = [Ranjit_LowLeftPunch, Ranjit_LowRightPunch, Ranjit_LowLeftKick, Ranjit_LowRightKick]
		attack_duck_indexes = [[1], [1], [2], [2]]
		
		sp_hurt = [Highlander_RightPunch, Highlander_RightPunch, Highlander_RightPunch]
		sp_hurt_duck = Ranjit_HurtDuck
		
		head_slammer_index = [4]
		aerial_roundhouse_index = [3]
		
		break
		
		case CHAR_LIZ: 
		sp_idle = Liz_Idle
		sp_forward = Liz_Forward
		sp_backward = Liz_Backward
		sp_fall = Liz_Idle
		sp_jump = Liz_Idle
		sp_duck = Liz_Duck
		sp_block = Liz_Block
		sp_block_duck = Liz_BlockDuck
		sp_sprinting = Liz_Frontstep
		sp_backstep = Liz_Backstep
		
		sp_throw = [Liz_ThrowForward, Liz_ThrowBackward]
		throw_indexes = [[5], [10]]
		
		sp_hurt_u = Liz_HurtHead
		sp_ko = Liz_Knockout
		
		sp_attack = [Liz_LeftPunch, Liz_RightPunch, Liz_LeftKick, Liz_RightKick]
		attack_indexes = [[1], [2], [2], [5, 14]]
		sp_attack_duck = [Liz_LowLeftPunch, Liz_LowRightPunch, Liz_LowLeftKick, Liz_LowRightKick]
		attack_duck_indexes = [[1], [2, 10], [1], [1]]
		
		sp_hurt = [Liz_HurtHead, Liz_HurtBody, Liz_HurtLow]
		sp_hurt_duck = Liz_HurtDuck
		
		head_slammer_index = [4]
		aerial_roundhouse_index = [3]
		
		break
		
		case CHAR_NATSU: 
		sp_idle = Natsu_Idle
		sp_forward = Ranjit_Forward
		sp_backward = Ranjit_Backward
		sp_fall = Ranjit_Idle
		sp_jump = Ranjit_Idle
		sp_duck = Ranjit_Duck
		sp_block = Ranjit_Block
		sp_block_duck = Ranjit_BlockDuck
		sp_sprinting = Ranjit_Sprinting
		sp_backstep = Ranjit_Backstep
		
		sp_throw = [Ranjit_ThrowForward, Ranjit_ThrowBackward]
		throw_indexes = [[4], [4]]
		
		sp_hurt_u = Ranjit_HurtHead
		sp_ko = Ranjit_Knockout
		
		sp_attack = [Ranjit_LeftPunch, Ranjit_RightPunch, Ranjit_LeftKick, Ranjit_RightKick]
		attack_indexes = [[1], [1], [5], [2]]
		sp_attack_duck = [Ranjit_LowLeftPunch, Ranjit_LowRightPunch, Ranjit_LowLeftKick, Ranjit_LowRightKick]
		attack_duck_indexes = [[1], [1], [2], [2]]
		
		sp_hurt = [Ranjit_HurtHead, Ranjit_HurtMid, Ranjit_HurtLow]
		sp_hurt_duck = Ranjit_HurtDuck
		
		head_slammer_index = [4]
		aerial_roundhouse_index = [3]
		
		break
		
		case CHAR_LEON: 
		sp_idle = Ranjit_Idle
		sp_forward = Ranjit_Forward
		sp_backward = Ranjit_Backward
		sp_fall = Ranjit_Idle
		sp_jump = Ranjit_Idle
		sp_duck = Ranjit_Duck
		sp_block = Ranjit_Block
		sp_block_duck = Ranjit_BlockDuck
		sp_sprinting = Ranjit_Sprinting
		sp_backstep = Ranjit_Backstep
		
		sp_throw = [Ranjit_ThrowForward, Ranjit_ThrowBackward]
		throw_indexes = [[4], [4]]
		
		sp_hurt_u = Ranjit_HurtHead
		sp_ko = Ranjit_Knockout
		
		sp_attack = [Ranjit_LeftPunch, Ranjit_RightPunch, Ranjit_LeftKick, Ranjit_RightKick]
		attack_indexes = [[1], [1], [5], [2]]
		sp_attack_duck = [Ranjit_LowLeftPunch, Ranjit_LowRightPunch, Ranjit_LowLeftKick, Ranjit_LowRightKick]
		attack_duck_indexes = [[1], [1], [2], [2]]
		
		sp_hurt = [Ranjit_HurtHead, Ranjit_HurtMid, Ranjit_HurtLow]
		sp_hurt_duck = Ranjit_HurtDuck
		
		head_slammer_index = [4]
		aerial_roundhouse_index = [3]
		
		break
		
		case CHAR_RANIA: 
		sp_idle = Rania_Idle
		sp_forward = Ranjit_Forward
		sp_backward = Ranjit_Backward
		sp_fall = Rania_Idle
		sp_jump = Ranjit_Idle
		sp_duck = Ranjit_Duck
		sp_block = Ranjit_Block
		sp_block_duck = Ranjit_BlockDuck
		sp_sprinting = Ranjit_Sprinting
		sp_backstep = Ranjit_Backstep
		
		sp_throw = [Ranjit_ThrowForward, Ranjit_ThrowBackward]
		throw_indexes = [[4], [4]]
		
		sp_hurt_u = Ranjit_HurtHead
		sp_ko = Ranjit_Knockout
		
		sp_attack = [Ranjit_LeftPunch, Ranjit_RightPunch, Ranjit_LeftKick, Ranjit_RightKick]
		attack_indexes = [[1], [1], [5], [2]]
		sp_attack_duck = [Ranjit_LowLeftPunch, Ranjit_LowRightPunch, Ranjit_LowLeftKick, Ranjit_LowRightKick]
		attack_duck_indexes = [[1], [1], [2], [2]]
		
		sp_hurt = [Ranjit_HurtHead, Ranjit_HurtMid, Ranjit_HurtLow]
		sp_hurt_duck = Ranjit_HurtDuck
		
		head_slammer_index = [4]
		aerial_roundhouse_index = [3]
		
		break
		
		case CHAR_CHOCLO: 
		sp_idle = Ranjit_Idle
		sp_forward = Ranjit_Forward
		sp_backward = Ranjit_Backward
		sp_fall = Ranjit_Idle
		sp_jump = Ranjit_Idle
		sp_duck = Ranjit_Duck
		sp_block = Ranjit_Block
		sp_block_duck = Ranjit_BlockDuck
		sp_sprinting = Ranjit_Sprinting
		sp_backstep = Ranjit_Backstep
		
		sp_throw = [Ranjit_ThrowForward, Ranjit_ThrowBackward]
		throw_indexes = [[4], [4]]
		
		sp_hurt_u = Ranjit_HurtHead
		sp_ko = Ranjit_Knockout
		
		sp_attack = [Ranjit_LeftPunch, Ranjit_RightPunch, Ranjit_LeftKick, Ranjit_RightKick]
		attack_indexes = [[4], [4], [13], [4]]
		sp_attack_duck = [Ranjit_LowLeftPunch, Ranjit_LowRightPunch, Ranjit_LowLeftKick, Ranjit_LowRightKick]
		attack_duck_indexes = [[4], [4], [4], [4]]
		
		sp_hurt = [Ranjit_HurtHead, Ranjit_HurtMid, Ranjit_HurtLow]
		sp_hurt_duck = Ranjit_HurtDuck
		
		break
		
		case CHAR_KAIDA: 
		sp_idle = Ranjit_Idle
		sp_forward = Ranjit_Forward
		sp_backward = Ranjit_Backward
		sp_fall = Ranjit_Idle
		sp_jump = Ranjit_Idle
		sp_duck = Ranjit_Duck
		sp_block = Ranjit_Block
		sp_block_duck = Ranjit_BlockDuck
		sp_sprinting = Ranjit_Sprinting
		sp_backstep = Ranjit_Backstep
		
		sp_throw = [Ranjit_ThrowForward, Ranjit_ThrowBackward]
		throw_indexes = [[4], [4]]
		
		sp_hurt_u = Ranjit_HurtHead
		sp_ko = Ranjit_Knockout
		
		sp_attack = [Ranjit_LeftPunch, Ranjit_RightPunch, Ranjit_LeftKick, Ranjit_RightKick]
		attack_indexes = [[4], [4], [13], [4]]
		sp_attack_duck = [Ranjit_LowLeftPunch, Ranjit_LowRightPunch, Ranjit_LowLeftKick, Ranjit_LowRightKick]
		attack_duck_indexes = [[4], [4], [4], [4]]
		
		sp_hurt = [Ranjit_HurtHead, Ranjit_HurtMid, Ranjit_HurtLow]
		sp_hurt_duck = Ranjit_HurtDuck
		
		break
		
		case CHAR_SETH: 
		sp_idle = Ranjit_Idle
		sp_forward = Ranjit_Forward
		sp_backward = Ranjit_Backward
		sp_fall = Ranjit_Idle
		sp_jump = Ranjit_Idle
		sp_duck = Ranjit_Duck
		sp_block = Ranjit_Block
		sp_block_duck = Ranjit_BlockDuck
		sp_sprinting = Ranjit_Sprinting
		sp_backstep = Ranjit_Backstep
		
		sp_throw = [Ranjit_ThrowForward, Ranjit_ThrowBackward]
		throw_indexes = [[4], [4]]
		
		sp_hurt_u = Ranjit_HurtHead
		sp_ko = Ranjit_Knockout
		
		sp_attack = [Ranjit_LeftPunch, Ranjit_RightPunch, Ranjit_LeftKick, Ranjit_RightKick]
		attack_indexes = [[4], [4], [13], [4]]
		sp_attack_duck = [Ranjit_LowLeftPunch, Ranjit_LowRightPunch, Ranjit_LowLeftKick, Ranjit_LowRightKick]
		attack_duck_indexes = [[4], [4], [4], [4]]
		
		sp_hurt = [Ranjit_HurtHead, Ranjit_HurtMid, Ranjit_HurtLow]
		sp_hurt_duck = Ranjit_HurtDuck
		
		break
		
		case CHAR_JEREMIAH: 
		sp_idle = Ranjit_Idle
		sp_forward = Ranjit_Forward
		sp_backward = Ranjit_Backward
		sp_fall = Ranjit_Idle
		sp_jump = Ranjit_Idle
		sp_duck = Ranjit_Duck
		sp_block = Ranjit_Block
		sp_block_duck = Ranjit_BlockDuck
		sp_sprinting = Ranjit_Sprinting
		sp_backstep = Ranjit_Backstep
		
		sp_throw = [Ranjit_ThrowForward, Ranjit_ThrowBackward]
		throw_indexes = [[4], [4]]
		
		sp_hurt_u = Ranjit_HurtHead
		sp_ko = Ranjit_Knockout
		
		sp_attack = [Ranjit_LeftPunch, Ranjit_RightPunch, Ranjit_LeftKick, Ranjit_RightKick]
		attack_indexes = [[4], [4], [13], [4]]
		sp_attack_duck = [Ranjit_LowLeftPunch, Ranjit_LowRightPunch, Ranjit_LowLeftKick, Ranjit_LowRightKick]
		attack_duck_indexes = [[4], [4], [4], [4]]
		
		sp_hurt = [Ranjit_HurtHead, Ranjit_HurtMid, Ranjit_HurtLow]
		sp_hurt_duck = Ranjit_HurtDuck
		
		break
	}
	
	//Default index will always be the idle sprite animation
	sprite_index = sp_idle
}