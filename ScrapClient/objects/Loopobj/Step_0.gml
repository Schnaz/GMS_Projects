/// @description Insert description here
// You can write your code in this editor

//loopgen(xx,yy,zz,lang,lriz,a,b,c,d,anga,angb,num)
if global.tool!=2 {instance_destroy();}
else {
loopgen(cpoint.ax,cpoint.ay,cpoint.az,0,0,bara.vec,barb.vec,barc.vec,bard.vec,baraa.ang,-barba.ang+90,num);
setpoints();
}



