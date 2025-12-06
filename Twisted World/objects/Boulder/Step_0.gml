agc=Char.agc;
ags=Char.ags;
//move code starts here

vx+=ax;
vy+=ay;
if abs(vx)>4 vx=4*sign(vx);
if abs(vy)>4 vy=4*sign(vy);

if place_meeting(x+ax*8,y+ay*8,layer_tilemap_get_id("solidmap")) {grnd=true;
	
//if agc*rot!=vx {vx+=0.05*sign(agc*rot-vx) rot+=0.05*sign(agc*rot-vx)};
//if ags*rot!=vy {vy+=0.05*sign(ags*rot-vy) rot+=0.05*sign(agc*rot-vx)};
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