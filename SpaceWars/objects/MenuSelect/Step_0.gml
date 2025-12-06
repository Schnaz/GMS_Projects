/// @description Insert description here
// You can write your code in this editor
if gamepad_axis_value(0, gp_axislh)!=0 || gamepad_axis_value(0, gp_axislv)!=0 {ANG=-90+point_direction(0,0,gamepad_axis_value(0, gp_axislh),gamepad_axis_value(0, gp_axislv))};
phy_rotation=-ANG;
if gamepad_button_check_pressed(0,gp_shoulderrb) {with instance_create_depth(x,y,depth,MenuBullet) {
	phy_rotation=other.phy_rotation;
	physics_apply_local_impulse(0,0,0,-100)}}
