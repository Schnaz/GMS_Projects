agc=Char.agc;
ags=Char.ags;
//move code starts here

mvx=mv*sign(-agc*x-ags*y+agc*Char.x+ags*Char.y);

vx+=ax;
vy+=ay;
if abs(vx)>4 vx=4*sign(vx);
if abs(vy)>4 vy=4*sign(vy);

if place_meeting(x+ax*8,y+ay*8,layer_tilemap_get_id("solidmap")) {grnd=true;
	
if agc*mvx!=vx vx+=0.05*sign(agc*mvx-vx);
if ags*mvx!=vy vy+=0.05*sign(ags*mvx-vy);

rot=agc*vx+ags*vy
}
else grnd=false;


ax=Char.ax
ay=Char.ay

xx+=vx;


for (var ii=1;ii<=abs(xx);ii++)
{
if place_meeting(x+sign(xx),y,layer_tilemap_get_id("solidmap")) {xx=0; vx=0;
	if abs(agc)<abs(ags) {grnd=true;}
break;}
else {x+=sign(xx); 
	if abs(agc)<abs(ags) grnd=false;
xx-=sign(xx)}
}

yy+=vy;

for (var ii=1;ii<=abs(yy);ii++)
{
if place_meeting(x,y+sign(yy),layer_tilemap_get_id("solidmap")) {yy=0; vy=0; 
	if abs(ags)<abs(agc) {grnd=true;}
break;}
else {y+=sign(yy); 
	if abs(ags)<abs(agc) grnd=false;
yy-=sign(yy)}
}

ang-=rot*6;
ang2=point_direction(Char.x,Char.y,x,y);