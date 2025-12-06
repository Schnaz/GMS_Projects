/// @description Insert description here
// You can write your code in this editor
if gamepad_axis_value(0, gp_axisrh)!=0 || gamepad_axis_value(0, gp_axisrv)!=0 {ANG=-90+point_direction(0,0,gamepad_axis_value(0, gp_axisrh),gamepad_axis_value(0, gp_axisrv))};
Camax=phy_position_x-(global.Sph/4)*sin(degtorad(-phy_rotation-ANG));
Camay=phy_position_y-(global.Sph/4)*cos(degtorad(-phy_rotation-ANG));


camera_set_view_angle(Cama,phy_rotation+ANG)
camera_set_view_pos(Cama, Camax-(global.Spw/2), Camay-(global.Sph/2))
physics_apply_local_force(0,0,0,-0.05*gamepad_button_check(0, gp_shoulderlb));
phy_angular_velocity+=gamepad_axis_value(0, gp_axislh);
phy_linear_damping=gamepad_button_check(0, gp_shoulderl);
phy_angular_damping=gamepad_button_check(0, gp_shoulderl);

if gamepad_button_check_pressed(0,gp_shoulderrb) {with instance_create_depth(x,y,depth,SBullet) {
	
//physics_fixture_set_sensor(Fixt, true);

	
	phy_rotation=other.phy_rotation;
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,-0.005)}}
