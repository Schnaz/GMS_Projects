function cm_member(r1,r2,length,res,top,bottom){

var inc=360/res;
var ang1=0; //angle around z axis
var ang2=0; //angle along z axis
var c1=0;
var c2=0;
var tran=0;
var ang3=90-darctan((r2-r1)/length)

//don't use repeat here, use a while statement with a for inside

arr=[];
ar2=[];
var zz=0;
var rr=r1;

color=c_white;

//check top and run till ang2>ang3 then set ang2 to ang3
if (top)
{
	while (ang2<ang3)
	{
		array_push(arr,[]);
		array_push(ar2,[]);
		repeat (res)
			{
			array_push(arr[c2], [dcos(ang1)*dsin(ang2)*rr,dsin(ang1)*dsin(ang2)*rr, dcos(ang2)*rr+zz]);
			array_push(ar2[c2], [dcos(ang1)*dsin(ang2),dsin(ang1)*dsin(ang2), dcos(ang2)]);
			if  (c1&&c2) vertex_add_rect(vb, arr[c2-1][(c1-1)%res], arr[c2-1][c1%res], arr[c2][c1%res], arr[c2][(c1-1)%res], ar2[c2-1][(c1-1)%res], ar2[c2-1][c1%res], ar2[c2][c1%res], ar2[c2][(c1-1)%res], [0,0,0,0], color, 1);
			ang1+=inc;
			c1++
			}
		if  (c1&&c2) vertex_add_rect(vb, arr[c2-1][(c1-1)%res], arr[c2-1][c1%res], arr[c2][c1%res], arr[c2][(c1-1)%res], ar2[c2-1][(c1-1)%res], ar2[c2-1][c1%res], ar2[c2][c1%res], ar2[c2][(c1-1)%res], [0,0,0,0], color, 1);
		ang1=0;
		ang2+=inc;
		c1=0;
		c2++;
	}
}
tran=c2;
array_push(arr,[]);
array_push(ar2,[]);
array_push(arr,[]);
array_push(ar2,[]);
repeat (res)
	{
	rr=r1;
	zz=0;
	array_push(arr[c2], [dcos(ang1)*dsin(ang2)*rr,dsin(ang1)*dsin(ang2)*rr, dcos(ang2)*rr+zz]);
	array_push(ar2[c2], [dcos(ang1)*dsin(ang2),dsin(ang1)*dsin(ang2), dcos(ang2)]);
if (c1&&c2) vertex_add_rect(vb, arr[c2-1][(c1-1)%res], arr[c2-1][c1%res], arr[c2][c1%res], arr[c2][(c1-1)%res], ar2[c2-1][(c1-1)%res], ar2[c2-1][c1%res], ar2[c2][c1%res], ar2[c2][(c1-1)%res], [0,0,0,0], color, 1);
	rr=r2;
	zz=-length;
	array_push(arr[c2+1], [dcos(ang1)*dsin(ang2)*rr,dsin(ang1)*dsin(ang2)*rr, dcos(ang2)*rr+zz]);
	array_push(ar2[c2+1], [dcos(ang1)*dsin(ang2),dsin(ang1)*dsin(ang2), dcos(ang2)]);
if (c1) vertex_add_rect(vb, arr[c2][(c1-1)%res], arr[c2][c1%res], arr[c2+1][c1%res], arr[c2+1][(c1-1)%res], ar2[c2][(c1-1)%res], ar2[c2][c1%res], ar2[c2+1][c1%res], ar2[c2+1][(c1-1)%res], [0,0,0,0], color, 1);
	c1++;
	ang1+=inc;
	}
vertex_add_rect(vb, arr[c2-1][(c1-1)%res], arr[c2-1][c1%res], arr[c2][c1%res], arr[c2][(c1-1)%res], ar2[c2-1][(c1-1)%res], ar2[c2-1][c1%res], ar2[c2][c1%res], ar2[c2][(c1-1)%res], [0,0,0,0], color, 1);
vertex_add_rect(vb, arr[c2][(c1-1)%res], arr[c2][c1%res], arr[c2+1][c1%res], arr[c2+1][(c1-1)%res], ar2[c2][(c1-1)%res], ar2[c2][c1%res], ar2[c2+1][c1%res], ar2[c2+1][(c1-1)%res], [0,0,0,0], color, 1);
c2+=2;
c1=0;
if (bottom)
{
	while (ang2<=180)
	{
		array_push(arr,[]);
		array_push(ar2,[]);
		repeat (res)
			{
			array_push(arr[c2], [dcos(ang1)*dsin(ang2)*rr,dsin(ang1)*dsin(ang2)*rr, dcos(ang2)*rr+zz]);
			array_push(ar2[c2], [dcos(ang1)*dsin(ang2),dsin(ang1)*dsin(ang2), dcos(ang2)]);
			if  (c1&&c2) vertex_add_rect(vb, arr[c2-1][(c1-1)%res], arr[c2-1][c1%res], arr[c2][c1%res], arr[c2][(c1-1)%res], ar2[c2-1][(c1-1)%res], ar2[c2-1][c1%res], ar2[c2][c1%res], ar2[c2][(c1-1)%res], [0,0,0,0], color, 1);
			ang1+=inc;
			c1++
			}
		if  (c1&&c2) vertex_add_rect(vb, arr[c2-1][(c1-1)%res], arr[c2-1][c1%res], arr[c2][c1%res], arr[c2][(c1-1)%res], ar2[c2-1][(c1-1)%res], ar2[c2-1][c1%res], ar2[c2][c1%res], ar2[c2][(c1-1)%res], [0,0,0,0], color, 1);
		ang1=0;
		ang2+=inc;
		c1=0;
		c2++;
	}
}
}