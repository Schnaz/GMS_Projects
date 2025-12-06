/// @description Insert description here
// You can write your code in this editor
Pnum=gamepad_is_connected(0)+gamepad_is_connected(1)+gamepad_is_connected(2)+gamepad_is_connected(3);
val=0;

audio_play_sound(Warssng,2,1);


ww=window_get_width();
hh=window_get_height();
global.Spw=ww/Pnum;
global.Sph=hh;
