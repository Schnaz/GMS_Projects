/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(Taho);
if print {

draw_set_color(c_black);
draw_rectangle(Tester.x-40,Tester.y-32,Tester.x+40,Tester.y-22,0);
draw_set_color(c_white);

draw_text(Tester.x-40,Tester.y-32,"press 'L' to inspect"); 

}