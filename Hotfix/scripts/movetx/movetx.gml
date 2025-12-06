//movei();
function movetx(vvx){
for(var ix=vvx;abs(ix)>0;ix-=sign(vvx))
{
if ((tilemap_get_at_pixel(tl,bbox_left+sign(vvx),bbox_top)!=0))||((tilemap_get_at_pixel(tl,bbox_left+sign(vvx),bbox_bottom)!=0))||((tilemap_get_at_pixel(tl,bbox_right+sign(vvx),bbox_top)!=0))||((tilemap_get_at_pixel(tl,bbox_right+sign(vvx),bbox_bottom)!=0)) {return(0); exit};

if abs(ix)<1 {x+=ix; return(1); exit;}
x+=sign(vvx);
}
return(1);
}