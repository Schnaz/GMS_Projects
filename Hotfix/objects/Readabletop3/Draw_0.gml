/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(Taho);
if print {

draw_set_color(c_black);
draw_rectangle(Tester.x-40,Tester.y-32,Tester.x+40,Tester.y-22,0);
draw_set_color(c_white);

draw_text(Tester.x-40,Tester.y-32,"press 'L' to read"); 
}



if timeline_index=mBoss2
{

draw_set_font(Cali);
draw_text(room_width/2-16,0,"Bug test");
draw_healthbar(room_width/2-64,16,room_width/2+64,13,100*(timeline_position/1500),c_dkgrey,c_red,c_lime,0,1,1);

}