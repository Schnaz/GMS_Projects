/// @description Insert description here
// You can write your code in this editor
for (var ii=0; ii<4; ii++)
{
av[ii]+=rv[ii];
vx[ii]+=0.2*dsin(image_angle);
vy[ii]+=0.2*dcos(image_angle);
xv[ii]+=vx[ii]-3*dsin(image_angle);
yv[ii]+=vy[ii]-3*dcos(image_angle);
}
alph=alarm[0]/30;



