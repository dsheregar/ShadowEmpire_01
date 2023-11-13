/// @description Insert description here
// You can write your code in this editor
if (kcp(ord("P")) || gamepad_button_check_pressed(0,gp_start)|| gamepad_button_check_pressed(1,gp_start))
{
	switch(pause)
	{
		case false:
			instance_deactivate_layer("Instances_1")
			pause = true
			break

		case true:
			instance_activate_layer("Instances_1")
			pause = false
			break
	}
}