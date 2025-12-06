/// @description Insert description here
// You can write your code in this editor

if !test&&!comp

{
Dialogue=[0]

Dialogue[7,0]=0;
Dialogue[6,0]="01Alright, just give me a few seconds to set up07";
Dialogue[4,0]=0;
Dialogue[3,0]="01I'll admit the controls are a bit wonky, and I don't want you to die as soon as you leave the room.00"
Dialogue[2,0]="01Oh the test? I'm going to release a bunch of balloons and you will have 25 seconds to destroy them all.03"
Dialogue[0,3]="00Whats the test?02"
Dialogue[0,2]="00No04"
Dialogue[0,1]="00Yes06"
Dialogue[0,0]="01So... are you ready?00"

Actions[7]=3;


Dial(Dialogue,Charray,Actions);
}

if comp
{
Dial_clear();

Dialogue[2,0]=0;
Dialogue[1,0]="01Don't worry, I'll be right behind you.02";
Dialogue[0,0]="01What? getting cold feet?01"

Dial(Dialogue,Charray,Actions);
}