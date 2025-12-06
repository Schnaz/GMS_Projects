/// @description Insert description here
// You can write your code in this editor
Dial_clear();
if Tester.In=1
{
if Tester.Trigs[4]=0
{
Tester.Trigs[4]=1;
	
Actions[10]=1;
Actions[11]=2;
Actions[13]=3;
	
Dialogue=[
["01I'm just hiding out here till this whole error business blows over.01","00Who are you?01","00Are you the Dev?02","00Are you the real slim shady?03"],
["01Who I am isn't important. Whats important is that you take one of these, leave, and tell nobody that you saw me.04"],
["01So close, yet so far... Anyways take one of these and tell nobody you saw me.04"],
["01Sure, lets go with that... Anyways take one of these and tell nobody you saw me.04"],
["00What are they?05"],
["01Unimplemented firearms.06"],
["01They are crazy strong, and crazy illegal. I have with me a Placeholder and a Temporary.07"],
["01The Placeholder is a gun whose bullets won't fly as long as you fire,08"],
["01While the Temporary has an insanely high fire rate, that goes down the longer you fire09"],
["01So, which do you want?09","00Placeholder10","00Temporary11","00Both12","00Neither14"],
["00You got the placeholder! Use 'E' to switch weapons.15"],
["00You got the Temporary! Use 'E' to switch weapons.15"],
["01You want both? Well fine, but you have to give me your weapon in exchange. Are you willing to make the trade?12","00Yes13","00No09"],
["00You got both the Placeholder and the Temporary! But you lost your current gun. Use 'E' to switch weapons15"],
["01Well suit yourself.15"],
[0]
];
}
else
{
Actions[9]=4;
Actions[10]=5;
Actions[11]=6;
Actions[12]=1;
Actions[13]=2;

Dialogue[15]=[0];

Dialogue[13]=["00You exchanged you unequiped weapon for the Temporary15"];
Dialogue[12]=["00You exchanged you unequiped weapon for the Placeholder15"];
Dialogue[11]=["00You exchanged you unequiped weapon for the Rifle15"];
Dialogue[10]=["00You exchanged you unequiped weapon for the Machine gun15"];
Dialogue[9]=["00You exchanged you unequiped weapon for the Shotgun15"];

if Tester.Gn=4||Tester.Inv[0]=5 Dialogue[8]=["01You have the one and only Temporary! I can't give you another!15"];
else Dialogue[8]=["01The Temporary? Ok, lets trade.13"];

if Tester.Gn=3||Tester.Inv[0]=4 Dialogue[7]=["01You have the one and only Placeholder! I can't give you another!15"];
else Dialogue[7]=["01The Placeholder? Ok, lets trade.12"];

Dialogue[6]=["01Unimplemented Firearms eh? Which one?06","00Placeholder07","00Temporary08","00Nevermind15"];

if Tester.Gn=2||Tester.Inv[0]=3 Dialogue[5]=["01You have the only Rifle! I can't give you another!15"];
else Dialogue[5]=["01The Rifle? Ok, lets trade.11"];

if Tester.Gn=1||Tester.Inv[0]=2 Dialogue[4]=["01You have the only Machine gun! I can't give you another!15"];
else Dialogue[4]=["01The Machine gun? Ok, lets trade.10"];

if Tester.Gn=0||Tester.Inv[0]=1 Dialogue[3]=["01You have the only Shotgun! I can't give you another!15"];
else Dialogue[3]=["01The Shotgun? Ok, lets trade.09"];

Dialogue[2]=["01Standard weaponry eh? Which one?01","00Shotgun03","00Machine gun04","00Rifle05","00Nevermind15"];
Dialogue[1]=["01Which do you want02","00Standard Weaponry02","00Unimplemented Firearms06","00Nevermind15"];
Dialogue[0]=["01What? Changed your mind? I'm willing to trade with your unequiped firearm if it will make this whole error business end sooner01"];

}

}
else
{
Dialogue=[
["01If you come back here with extra inventory, I might be able to give you something01"],
[0]
];
}

Dial(Dialogue,Charray,Actions);