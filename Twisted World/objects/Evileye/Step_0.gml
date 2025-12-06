/// @description Insert description here
// You can write your code in this editor
if image_index>5&&act=false {image_speed=0; act=true;




}


t+=1;
x=Char.x-16*dsin(t);
y=Char.y-ymin+8*dsin(2*t);
image_angle=15*dcos(t);

if !instance_exists(Tbox)&&image_speed=0 {image_speed=-1; image_index=5; Char.stop=false}
if image_index<0.5&&image_speed<0 instance_destroy();

