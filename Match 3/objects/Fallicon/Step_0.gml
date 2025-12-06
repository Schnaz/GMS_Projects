/// @description Insert description here
// You can write your code in this editor
//if !ply {ply=instance_place(x,y,Player);}

var xinc=dcos(grav)
var yinc=dsin(grav)

acc+=1;
repeat(acc)
{
ypos+=xinc;
xpos+=yinc;
var xs=sign(xinc);
var ys=sign(yinc);
//if ply {
////ply.alarm[1]=60;
//ply.ypos=y-ply.alarm[0]*ply.mvy; 
//ply.y=y;}
if (xpos*xs>x*xs)||(ypos*ys<y*ys) {
//if ply {ply.alarm[1]=0; 
//ply.ypos=y-ply.alarm[0]*ply.mvy; 
//ply.y=y;}
iconswitch(Fellicon);
exit;
}
}
