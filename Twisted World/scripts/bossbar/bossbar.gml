// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bossbar(){
with instance_create_depth(x,y,depth,Bossbar)
{
boss=other;
hpmax=other.hpmax;
hp=other.hp;
}
}