// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function iconswitch(instance){
var ins=instance_create_depth(x,y,depth,instance)
with(ins) {
ir1=other.ir1;
sprite_index=imarry[ir1];
image_blend=coarry[ir1];
}
instance_destroy(self,false);
return(ins);
}