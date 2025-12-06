/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alarm[0]/100)
draw_set_font(Taho);
draw_text_transformed(x-string_width(str)*Char.agc/2+(32-alarm[0]/25)*Char.ags,y-string_width(str)*Char.ags/2-(32-alarm[0]/25)*Char.agc,str,1,1,-Char.ang);




draw_set_alpha(1)