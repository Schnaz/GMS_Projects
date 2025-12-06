/// @description Insert description here
// You can write your code in this editor
repeat(mult)
{
x+=vx;
y+=vy;


with instance_create_depth(x,y,depth,Thorntrail)
{
caller=other;
mult=other.mult*other.mult;

}
}

if !place_meeting(x,y,layer_tilemap_get_id("solidmap"))&&!out
{out=true; mult=4; alarm[0]=5; audio_play_sound(pwah,10,0)}