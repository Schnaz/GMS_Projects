/// @description Insert description here
// You can write your code in this editor
if instance_exists(Boss)
{
with (Char)
{var hang=point_direction(x-other.ags*64,y-other.agc*64,x,y)
if alarm[2]<=0
{
vx=4*dcos(hang);
vy=-4*dsin(hang);
event_user(2);
}
}
}



