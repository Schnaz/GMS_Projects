/// @description Insert description here
// You can write your code in this editor
tt+=1;
var sinsoid=dsin(tt*6);
var cossoid=dcos(tt*6);
part.luarm.pitch+=2*cossoid;
part.ruarm.pitch-=2*cossoid;
part.luarm.yaw-=2*cossoid;
part.ruarm.yaw+=2*cossoid;
part.llarm.pitch+=2*sinsoid;
part.rlarm.pitch-=2*sinsoid;
part.luleg.pitch-=2*cossoid;
part.ruleg.pitch+=2*cossoid;

