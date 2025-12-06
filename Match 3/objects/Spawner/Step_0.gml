/// @description Insert description here
// You can write your code in this editor
if image_angle=global.gg {
if bb {instance_destroy(bb); bb=noone;}

if !place_meeting(x+dsin(global.gg),y+dcos(global.gg),[Icon,Border])&&!alarm[0] {
instance_create_depth(x,y,depth+1,Fallicon)
act=false;
alarm[0]=3;
}
}
else if !bb bb=instance_create_depth(x,y,depth-1,Border)