//movei();
function movex(vvx){
for(var ix=vvx;abs(ix)>0;ix-=sign(vvx))
{
if place_meeting(x+sign(vvx), y, solit) {return(0); exit};
if abs(ix)<1 {x+=ix; return(1); exit;}
x+=sign(vvx);
}
return(1);
}