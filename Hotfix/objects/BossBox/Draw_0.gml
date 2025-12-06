/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite(mgface2,img,x+ofx,y+ofy);

if print {
draw_set_font(Cali);
draw_text(room_width/2-32,0,"GravityBox");
draw_healthbar(room_width/2-64,13,room_width/2+64,16,100*(Hp/640),c_dkgrey,c_red,c_lime,0,1,1);
}
