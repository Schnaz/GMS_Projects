/// @description Insert description here
// You can write your code in this editor

if target=noone
{
xx=mouse_x;
yy=mouse_y;
}
else
{
xx=target.x
yy=target.y
}

physics_apply_force(0,0,-(x-xx)/divder,-(y-yy)/divder);