/// @description Insert description here
// You can write your code in this editor
instance_destroy(Roomtrans);
instance_destroy(Char);
dial_clear();
Charray=[[mques,1,tat],[mface,1,ha],[mbully,-1,wa]];
Actions[7]=1;
Dialogue=[["00And so Char finally\nmade their way home01"],
["00After kicking that bully's arse though02"],
["01I'm gonna kick your arse03"],
["02Oh Shniz!04"],
["00Thanks For Playing!06"],
//["00Here are your stats05"],
[0]];
dial(Dialogue,Charray,Actions);

