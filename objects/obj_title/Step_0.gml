/// @description Insert description here
// You can write your code in this editor

if (gamepad_button_check_pressed(0, gp_start)) {
    global.player1 = CONTROLLER1;
    room_goto_next();
} else if (gamepad_button_check_pressed(1, gp_start)) {
    global.player1 = CONTROLLER2;
    room_goto_next();
} else if (gamepad_button_check_pressed(2, gp_start)) {
    global.player1 = CONTROLLER3;
    room_goto_next();
} else if (gamepad_button_check_pressed(3, gp_start)) {
    global.player1 = CONTROLLER4;
    room_goto_next();
}