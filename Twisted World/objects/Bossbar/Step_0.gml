/// @description Insert description here
// You can write your code in this editor
if hp>0&&dist<16 {
dist+=1;
}
if hp<=0 {
dist-=1;
}
if dist<-16 {
instance_destroy();
}

if instance_exists(boss)
{
hpmax=boss.hpmax;
hp=boss.hp;
}
else hp=0;
