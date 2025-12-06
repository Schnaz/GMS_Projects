/// @description Insert description here
// You can write your code in this editor
Tcam=false;
Pnum=2;
ww=window_get_width();
hh=window_get_height();
global.Spw=ww/Pnum;
global.Sph=hh;

Camax=phy_position_x;
Camay=phy_position_y-(global.Sph/4);
ANG=0;
Cama=camera_create_view(phy_position_x-global.Spw/2, phy_position_y-global.Sph/2, global.Spw, global.Sph, phy_rotation);
view_set_camera(1, Cama);


