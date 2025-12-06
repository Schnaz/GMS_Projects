/// @description Insert description here
// You can write your code in this editor
z=1;

x+=10;
y+=10;

xt=(x-10)/20;
yt=(y-10)/20;

z=(view3D2.gridz[xt+1][yt]+view3D2.gridz[xt][yt+1])/2;

px=0;
py=0;

mx=0;
my=0;


shadow=instance_create_depth(x,y,depth,mbox);
shadow.body=self;

