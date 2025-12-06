/// @description Insert description here
// You can write your code in this editor
draw_line(0,0,1024,0);
draw_line(0,768,1024,768);
draw_line(0,0,0,768);
draw_line(1024,0,1024,768);

with (Phydest)
{
if phy_com_y<0 {draw_line(0,0,phy_com_x,phy_com_y); draw_line(phy_com_x,phy_com_y,1024,0);}
if phy_com_y>768 {draw_line(0,768,phy_com_x,phy_com_y); draw_line(phy_com_x,phy_com_y,1024,768);}
if phy_com_x<0 {draw_line(0,0,phy_com_x,phy_com_y); draw_line(phy_com_x,phy_com_y,0,768);}
if phy_com_x>1024 {draw_line(1024,0,phy_com_x,phy_com_y); draw_line(phy_com_x,phy_com_y,1024,768);}
}