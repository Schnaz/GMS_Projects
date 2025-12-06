/// @description Insert description here
// You can write your code in this editor

with (Phydest)
{
physics_apply_force(phy_com_x,phy_com_y,-phy_com_x*phy_com_x*sign(phy_com_x)*0.0000001,-phy_com_y*phy_com_y*sign(phy_com_y)*0.0000001)	
	if (phy_com_x*phy_com_x)+(phy_com_y*phy_com_y)>3211264 {HP-=0.01;}

	
}


val+=1;
if val=20
{


for(var i= 1; i<=Pnum; i++)
{
	view_set_visible(i-1,true);
	view_set_hport(i-1, global.Sph);
	view_set_xport(i-1, global.Spw*(i-1));
	view_set_hport(i-1, global.Sph);
	view_set_wport(i-1, global.Spw);
	
	Players[i-1]=instance_create_depth(x+256*dcos(i*90),y+256*dsin(i*90),depth,Ship);
	with(Players[i-1])
	{
	Pnum=i;
	Eval=Shipdat.Ships[i-1]
	Creator=other;
	phy_rotation=90*i+90
	
	Camax=phy_position_x;
	Camay=phy_position_y-(global.Sph/4);
	
	Cama=camera_create_view(phy_position_x-global.Spw/2, phy_position_y-global.Sph/2, global.Spw, global.Sph, phy_rotation);
	view_set_camera(Pnum-1, Cama);
	
	}

camera_set_view_size(Players[i-1].Cama, view_get_wport(i-1), view_get_hport(i-1));
	}
surface_resize(application_surface, ww, hh);
}



