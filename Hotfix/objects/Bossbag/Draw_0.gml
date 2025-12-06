/// @description Insert description here
// You can write your code in this editor

draw_set_font(Cali);
draw_text(x-64,y-32,"Punching Bag");
draw_healthbar(x-64,y-16,x+64,y-13,100*(HbossA.Hp/320),c_dkgrey,c_red,c_white,0,1,1);
