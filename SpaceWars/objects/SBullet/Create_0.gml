/// @description Insert description here
// You can write your code in this editor
Eload=0;
ball=physics_fixture_create();
physics_fixture_set_circle_shape(ball, 1);
physics_fixture_set_density(ball,1);
physics_fixture_set_restitution(ball,0.1);
if Eload=1 physics_fixture_set_restitution(ball,1);
physics_fixture_set_collision_group(ball,0);
physics_fixture_set_linear_damping(ball,0);
physics_fixture_set_angular_damping(ball,0);
physics_fixture_set_friction(ball,0.2);
physics_fixture_bind(ball,self);
phy_bullet=true;
Age=0;
Xvel=phy_linear_velocity_x;
Yvel=phy_linear_velocity_y;

Explosion=Sboom;
Alim=1000;