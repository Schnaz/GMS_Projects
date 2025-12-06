x2=oColmeshDemo221.x;
y2=oColmeshDemo221.y;
z2=oColmeshDemo221.z;

if (point_distance_3d(x,y,z,x2,y2,z2)<64) {
oColmeshDemo221.prevX=x2+(x-x2)/4;
oColmeshDemo221.prevY=y2+(y-y2)/4;
oColmeshDemo221.prevZ=z2+(z-z2)/4;

}