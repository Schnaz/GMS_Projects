/// @description Insert description here
// You can write your code in this editor
if global.sw[10]=false
{
dial_clear();
Actions[1]=1;
Dialogue=[
["00Will you save this twisted world?00","00yes01","00no02"],
["00World Saved02"],
[0]]
dial(Dialogue,Charray,Actions);
}
else event_user(1);


