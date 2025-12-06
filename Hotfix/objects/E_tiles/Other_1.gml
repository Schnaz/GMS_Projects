/// @description Insert description here
// You can write your code in this editor
if bounding
{
if x>room_width-4 E_tiles.Dir1=-1;
if x<4 E_tiles.Dir1=1;
if y>room_height-4 E_tiles.Dir2=-1;
if y<4 E_tiles.Dir2=1;

with(instance_nearest(Tester.x, Tester.y, E_tiles)) {instance_change(E_tile, 1);}
}