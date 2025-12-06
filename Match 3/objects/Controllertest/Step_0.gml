/// @description Insert description here
// You can write your code in this editor
mvx = gamepad_axis_value(0, gp_axisrh);
mvy = -gamepad_axis_value(0, gp_axisrv);
if point_distance(0,0,mvx,mvy) ang=round(point_direction(0,0,mvx,mvy)/90)*90;
//Player.image_angle=-ang-90;
global.gg=-ang+90;

if gamepad_button_check_pressed(0, gp_start) {room_restart();}
if gamepad_button_check_pressed(1, gp_start) {room_restart();}