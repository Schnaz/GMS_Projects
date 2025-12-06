// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Heal(){

with(Tester)
{
// 5 health pickups
Mhp=Trigs[20]+Trigs[21]+Trigs[22]+Trigs[23]+Trigs[24]+Trigs[25]+Trigs[26];
//1 from bag, 2 from game, 3 from boss1, 4from boss2, 5from boss3
Hp=Mhp
Fm=12*(Trigs[30]+Trigs[31]+Trigs[32]);
//1 from health hall, 1 from bug test, 1secret from trial trail
Msp=1+0.2*(Trigs[40]+Trigs[41]+Trigs[42]);
//1 from gust chain, 1secret in TC, 1 in trial trail
In=(Trigs[50]+Trigs[51]);
//1 from Inventory room, 1 from Trial Trail
}

}