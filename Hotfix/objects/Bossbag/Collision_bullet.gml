/// @description Insert description here
// You can write your code in this editor
Hp-=other.Pwr;
Vr-=(0.1-Hp/6400)*other.Pwr*(angle_difference(point_direction(other.x,other.y,x,y)-90,image_angle));
instance_destroy(other);
if Hp<0 {image_index=4; exit}
if Hp<80 {image_index=3; exit}
if Hp<160 {image_index=2; exit}
if Hp<240 image_index=1;