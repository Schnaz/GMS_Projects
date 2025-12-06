//movei();
function movey(vvy){
for(var iy=vvy;abs(iy)>0;iy-=sign(vvy))
{
if place_meeting(x, y+sign(vvy), solit) {return(0); exit};
if abs(iy)<1 {y+=iy; return(1); exit;}
y+=sign(vvy);

}
return(1);
}