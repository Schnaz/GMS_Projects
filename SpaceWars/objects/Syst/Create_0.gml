/// @description Insert description here
// You can write your code in this editor
Pnum=2;
ww=window_get_width();
hh=window_get_height();
global.Spw=ww/Pnum;
global.Sph=hh;
players=[Player1,Player2];

Bball=physics_fixture_create();
physics_fixture_set_circle_shape(Bball, 8)
physics_fixture_set_density(Bball,0.5)
physics_fixture_set_restitution(Bball,0.1)
physics_fixture_set_collision_group(Bball,0)
physics_fixture_set_linear_damping(Bball,0)
physics_fixture_set_angular_damping(Bball,0)
physics_fixture_set_friction(Bball,0.2)
physics_fixture_set_sensor(Bball, true);

Mball=physics_fixture_create();
physics_fixture_set_circle_shape(Mball, 4)
physics_fixture_set_density(Mball,0.5)
physics_fixture_set_restitution(Mball,0.1)
physics_fixture_set_collision_group(Mball,0)
physics_fixture_set_linear_damping(Mball,0)
physics_fixture_set_angular_damping(Mball,0)
physics_fixture_set_friction(Mball,0.2)
physics_fixture_set_sensor(Mball, true);

Sball=physics_fixture_create();
physics_fixture_set_circle_shape(Sball, 1)
physics_fixture_set_density(Sball,0.5)
physics_fixture_set_restitution(Sball,0.1)
physics_fixture_set_collision_group(Sball,0)
physics_fixture_set_linear_damping(Sball,0)
physics_fixture_set_angular_damping(Sball,0)
physics_fixture_set_friction(Sball,0.2)
physics_fixture_set_sensor(Sball, true);