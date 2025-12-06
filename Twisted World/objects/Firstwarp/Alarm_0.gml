/// @description Insert description here
// You can write your code in this editor

Char.ang=0;
Char.x=256;
Char.y=256;
vx2=Char.vx*Char.agc+Char.vy*Char.ags;
vy2=Char.vy*Char.agc+Char.vx*Char.ags;
Char.vx=vx2;
Char.vy=-vy2;
Char.vx=0;
Char.vy=4;
Char.stop=true;
room_goto(Rabyss);



