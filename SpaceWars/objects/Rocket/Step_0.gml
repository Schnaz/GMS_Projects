/// @description Insert description here
// You can write your code in this editor
if Age=25 {if Eload=1 physics_fixture_set_restitution(ball,1);
physics_fixture_set_sensor(ball, false);
physics_remove_fixture(self,ball);	
physics_fixture_bind(ball,self);	
}

if Age<(Alim/2)
{
physics_apply_local_force(0,8,0,-0.1);
with (instance_create_depth(x,y,depth,Dust)) {
	
	phy_rotation=other.phy_rotation;
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,0.01);}
	
}

if Age>=Limit&&Eload=3 {
with (instance_create_depth(phy_position_x,phy_position_y,depth,Explosion))
{
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
}
instance_destroy();
}

Age+=1;

Xvel=phy_linear_velocity_x;
Yvel=phy_linear_velocity_y;

if Age>Alim instance_destroy();

