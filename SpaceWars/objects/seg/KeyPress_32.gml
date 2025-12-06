/// @description Insert description here
// You can write your code in this editor
count=10;
if count>0&&quan>0
{
with (instance_create_depth(x+32,y,depth,seg))
{
count=other.count-1;
target=other;
physics_joint_rope_create(other,self,other.x,other.y,self.x,self.y,32,false);
}
}
quan=0;