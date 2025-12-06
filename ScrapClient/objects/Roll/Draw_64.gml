/// @description Insert description here
// You can write your code in this editor


//draw_sprite_part_ext(Die, di1, 0, 0, 10, 20, x+40-10, y-20+0*20*dcos(ang), scale, scale*dsin(ang), col1, 1);
//draw_sprite_part_ext(Die, di2, 10, 0, 10, 20, x+40+10, y-20+0*20*dcos(ang), scale, scale*dsin(ang), col2, 1);


//draw_sprite_part_ext(Die, di1o, 0, 0, 10, 20, x+40-10, y-20-0*20*dsin(ang), scale, scale*dcos(ang), col1, 1);
//draw_sprite_part_ext(Die, di2o, 10, 0, 10, 20, x+40+10, y-20-0*20*dsin(ang), scale, scale*dcos(ang), col2, 1);




draw_sprite_part_ext(Die, di1, 0, 0, 10, 20, x-10*scale, y+20*dcos(ang)-20*dsin(ang), scale, scale*dsin(ang), col1, 1);
draw_sprite_part_ext(Die, di2, 10, 0, 10, 20, x, y+20*dcos(ang)-20*dsin(ang), scale, scale*dsin(ang), col2, 1);


draw_sprite_part_ext(Die, di1o, 0, 0, 10, 20, x-10*scale, y-20*dcos(ang)-20*dsin(ang), scale, scale*dcos(ang), col1, 1);
draw_sprite_part_ext(Die, di2o, 10, 0, 10, 20, x, y-20*dcos(ang)-20*dsin(ang), scale, scale*dcos(ang), col2, 1);

draw_text(x,y-100,string(di));

