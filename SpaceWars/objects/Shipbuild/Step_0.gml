/// @description Insert description here
// You can write your code in this editor

val+=1;
if val=20
{

ww=window_get_width();
hh=window_get_height();
global.Spw=ww/Pnum;
global.Sph=hh;

for(var i= 1; i<=Pnum; i++)
{
	view_set_visible(i-1,true);
	view_set_hport(i-1, global.Sph);
	view_set_xport(i-1, global.Spw*(i-1));
	view_set_hport(i-1, global.Sph);
	view_set_wport(i-1, global.Spw);
	
	Players[i-1]=instance_create_depth(x+i*2000,y,depth,BuildShip);
	with(Players[i-1])
	{
	Pnum=i;
	
	
	Camax=phy_position_x;
	Camay=phy_position_y-(global.Sph/4);
	
	Cama=camera_create_view(phy_position_x-global.Spw/2, phy_position_y-global.Sph/2, global.Spw, global.Sph, phy_rotation);
	view_set_camera(Pnum-1, Cama);
	
	}

camera_set_view_size(Players[i-1].Cama, view_get_wport(i-1), view_get_hport(i-1));
	}
surface_resize(application_surface, ww, hh);
}

if val>100
{
for (var ii=0; ii<=Pnum; ii++)
{
if ii=Pnum
{
instance_create_depth(x,y,depth,Shipdat);
break;
}
if Players[ii].ready=false break;

	
}
}