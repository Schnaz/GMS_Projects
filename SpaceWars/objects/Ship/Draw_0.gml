/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_sprite_ext(Shipdat.ShipTurn[Eval[0]], 0, x, y, 1, 1, -phy_rotation, c_white, 1);
draw_sprite_ext(Shipdat.ShipDrive[Eval[1]], 0, x, y, 1, 1, -phy_rotation, c_white, 1);
draw_sprite_ext(Shipdat.ShipBrake[Eval[2]], 0, x, y, 1, 1, -phy_rotation, c_white, 1);

//if Hdrive
//{
//draw_sprite_ext(Shipbuild.ShipDrive[2][Edrive], 0, x, y, 1, 1, -phy_rotation, c_white, 1);


//}
//if Hturn
//{
//draw_sprite_ext(Shipbuild.ShipTurn[2][Eturn], 0, x, y, 1, 1, -phy_rotation, c_white, 1);


//}
//if Hbrake
//{
//draw_sprite_ext(Shipbuild.ShipBrake[2][Ebrake], 0, x, y, 1, 1, -phy_rotation, c_white, 1);


//}