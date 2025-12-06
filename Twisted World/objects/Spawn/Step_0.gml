/// @description Insert description here
// You can write your code in this editor

t+=flip;
if t>=30 {room_goto(asset_get_index(global.sw[99])); event_perform_object(Char,ev_other,ev_user10);
Char.x=global.sw[96]; Char.y=global.sw[97]; Char.ang=global.sw[98]; Char.vx=0; Char.vy=0; flip=-1; ofst=256;}

if t<0 instance_destroy();



