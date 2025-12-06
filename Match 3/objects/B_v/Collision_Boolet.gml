/// @description Insert description here
// You can write your code in this editor
if other.object_index!=B_v
with(other)
{
var ob1=instance_create_depth(x,y,depth,object_index);
ob1.ang=ang+90;
var ob2=instance_create_depth(x,y,depth,object_index);
ob2.ang=ang-90;
}
instance_destroy(other,false);
instance_destroy();