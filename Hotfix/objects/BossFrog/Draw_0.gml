/// @description Insert description here
// You can write your code in this editor

draw_self();

//draw_set_font(Csans);
//draw_text(0,0-16,"TILE STRIKE UNION");
//draw_healthbar(0,0,0+64*2,0+3,100*(frognemy2.Hp/320),c_dkgrey,c_red,c_white,0,1,1);

if print {
draw_set_font(Cali);
draw_text(room_width/2-32,8,"BIG FROG");
draw_healthbar(room_width/2-64,21,room_width/2+64,24,100*(Hp/320),c_dkgrey,c_red,c_lime,0,1,1);
}
