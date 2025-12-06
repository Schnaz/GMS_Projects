/// @description SAVE THE WORLD
// You can write your code in this editor
global.sw[10]=true;
global.sw[99]=room_get_name(room);
global.sw[96]=x;
global.sw[97]=y;
global.sw[98]=-image_angle;
bsave();
ttip("World Saved");
image_speed=1;
alarm[0]=10;



