/// @description Insert description here
// You can write your code in this editor
draw_set_font(Csans);
draw_text(x,y-16,"TILE STRIKE UNION");
draw_healthbar(x,y,x+64*2,y+3,100*(instance_number(E_tile)+instance_number(E_tiles))/64,c_dkgrey,c_red,c_white,0,1,1);