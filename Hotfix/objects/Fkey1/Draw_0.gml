/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(Taho);
if print {

if Tester.Inv[0]>0&&Tester.Inv[0]<9 exit; 
if Tester.Inv[0]=0&&image_index=1 exit; 

draw_set_color(c_black);
draw_rectangle(Tester.x-40,Tester.y-32,Tester.x+40,Tester.y-22,0);
draw_set_color(c_white);

if Tester.Inv[0]=0&&image_index=0 draw_text(Tester.x-40,Tester.y-32,"press 'E' to take");
if Tester.Inv[0]=9&&image_index=1 draw_text(Tester.x-40,Tester.y-32,"press 'E' to place"); 
if Tester.Inv[0]=9&&image_index=0 draw_text(Tester.x-40,Tester.y-32,"press 'E' to swap keys"); 
}