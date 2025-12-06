/// @description Insert description here
// You can write your code in this editor
tt++
if tt>360 tt-=360;

//vb2=vertex_create_buffer();
//vertex_begin(vb2,view3D.vf);


if view3D.viewmat!=undefined {
arr=screen2world(window_mouse_get_x(),window_mouse_get_y(),view3D.viewmat,view3D.projmat);

var cx=arr[3];
var cy=arr[4];
var cz=arr[5];

var xd=arr[0];
var yd=arr[1];
var zd=arr[2];

switch(plane)
{
case 0: //zplane
fx=cx+xd*(cz-z)/-zd;
fy=cy+yd*(cz-z)/-zd;
fz=z;
break;
case 2: //xplane
fx=x;
fy=cy+yd*(cx-x)/-xd;
fz=cz+zd*(cx-x)/-xd;
break;
case 1: //yplane
fx=cx+xd*(cy-y)/-yd;
fy=y;
fz=cz+zd*(cy-y)/-yd;

break;
}

}

//vertex_end(vb2);


