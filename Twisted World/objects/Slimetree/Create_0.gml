/// @description Insert description here
// You can write your code in this editor
ar[0]=[0,0,16]
num=irandom_range(8,16);
for (var ii=num; ii>0; ii--)
{
ar[ii]=[irandom_range(-32,32),irandom_range(-32,32),irandom_range(8,16)]
}

xplus=dsin(image_angle)
yplus=dcos(image_angle)

tall=-64;
//myeye=instance_create_depth(x+xplus*tall,y+yplus*tall,depth-1,Bigeye)
t=irandom(360);

color=c_white;