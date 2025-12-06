/// @description Insert description here
// You can write your code in this editor

switch(plane)
{
case 0:
z+=1;
view3D.z+=1;
break;
case 1:
y+=1;
view3D.y+=1;
break;
case 2:
x+=1;
view3D.x+=1;
break;
}

gridgen(gridres,sep,divy,plane);
