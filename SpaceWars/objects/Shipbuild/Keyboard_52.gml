/// @description Insert description here
// You can write your code in this editor
ww=window_get_width();
hh=window_get_height();
global.Spw=ww/Pnum;
global.Sph=hh;


for(var i= Pnum; i>0; i--)
{
	view_set_hport(i-1, global.Sph);
	view_set_xport(i-1, global.Spw*(i-1));
	view_set_hport(i-1, global.Sph);
	view_set_wport(i-1, global.Spw);

camera_set_view_size(Players[i-1].Cama, view_get_wport(i-1), view_get_hport(i-1))
	}
	
surface_resize(application_surface, ww, hh)

//if window_get_fullscreen()=false {window_set_fullscreen(true);
//for(var i= Pnum; i>0; i--)
//{
//	view_get_hport(i-1, global.Sph);
//	view_set_xport(i-1, global.Spw*(i-1));
//	view_set_hport(i-1, global.Sph);
//	view_set_wport(i-1, global.Spw);
	
	
//	}	
	
//	};
//else {window_set_fullscreen(false);};


