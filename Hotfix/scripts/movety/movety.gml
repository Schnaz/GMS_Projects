//movei();
function movety(vvx){
for(var ix=vvx;abs(ix)>0;ix-=sign(vvx))
{
if ((tilemap_get_at_pixel(tl,bbox_left,bbox_top+sign(vvx))!=0))||((tilemap_get_at_pixel(tl,bbox_left,bbox_bottom+sign(vvx))!=0))||((tilemap_get_at_pixel(tl,bbox_right,bbox_top+sign(vvx))!=0))||((tilemap_get_at_pixel(tl,bbox_right,bbox_bottom+sign(vvx))!=0)) {return(0); exit};

if abs(ix)<1 {y+=ix; return(1); exit;}
y+=sign(vvx);
}
return(1);
}