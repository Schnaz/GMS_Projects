/// @description X to O

var loopgen=function(xx,yy,zz,nodat,a,b,c,d,hval,num)
{
	

//4 part ellipse
var inc=360/num;
var ii=0;
var ang=180;
var aa
var bb
repeat(num+1)
{
var val=floor(ang/90);
switch(val)
{
case 0:
aa=a;
bb=b;

break;
case 1:
aa=c;
bb=b;

break;
case 2:
aa=c;
bb=d;

break;
case 3:
aa=a;
bb=d;

break;
}
var exy=[dcos(-ang)*aa,dsin(-ang)*bb,zz];
var egxy=[round((exy[0]+xx)*100)/100,round((exy[1]+yy)*100)/100,zz,nodat[3],nodat[4],nodat[5]];
array_push(node,egxy)
ang+=inc;
if ang>=360 ang-=360;
ii++;
//this needs to return lines nodes showing what the loop will look like
}
}



// You can write your code in this editor

var ii=0;
do(++ii)
until(node[0][0]==node[ii][0]&&node[0][1]==node[ii][1]&&node[0][2]==node[ii][2])
var loop=ii;
var lp=(ii/2)-1;
ii=1;
var i1=0;
var i2=1;

var first=node[0]
var abcd=[[]];
var zzz=[];
repeat(lp)
{
zzz[i1]=node[ii]
abcd[i1][0]=abs(node[ii][0])
abcd[i1][1]=abs(node[ii+loop][1])
i1++
ii++
}
var last=node[ii]
repeat(lp)
{
ii++
i1--
abcd[i1][2]=abs(node[ii][0])
abcd[i1][3]=abs(node[ii+loop][1])
}

node=[[]];
show_message_async(abcd)


ii=0;
i1=0;
node[0]=first;
repeat(lp)
{
ii++
loopgen(node[0][0],node[0][1],zzz[i1][2],zzz[i1],abcd[i1][0],abcd[i1][1],abcd[i1][2],abcd[i1][3],0,loop)
i1++
}
array_push(node,last);

ni=array_length(node);

vertex_begin(vb2,view3D.vf);
ii=0
repeat(ni)
{
vertex_add_point(vb2,node[ii][0],node[ii][1],node[ii][2],0,0,1,0,0,c_lime,1);
ii++;
}
vertex_end(vb2);
