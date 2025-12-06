/// @description Insert description here
// You can write your code in this editor
opt=0;
//uneeded
Init=self;
//uneeded
//Dialogue=[[0]];
Dialogue[1,4]="00wow99"
Dialogue[1,3]="01cool00"
Dialogue[1,2]="02hurray00"
Dialogue[1,1]="00neat00"
Dialogue[1,0]="00oh really? the quick brown fox jumps over the lazy dog00"
Dialogue[0,0]="01the quick brown fox jumps over the lazy dog01";

//uneeded
Actions[99]=1;

//needed!!!!!!!!!!
page=0;

Text=string_copy(Dialogue[0,0],3,string_length(Dialogue[0,0])-4);

//needed!!!!!!!!!!
Ctext="";

Face=real(string_copy(Dialogue[0,0],1,2));

//needed!!!!!!!!!!
Face=1;

//uneeded
Charray=[[faceslot,-1,boop],[facedev,1,buup],[faceslot,1,tath]]

//uneeded
//Faces=[faceslot,facedev,faceslot];
//uneeded
//Facep=[-1,1];
//needed!!!!!!!!!!
talking=false;
//needed!!!!!!!!!!
preFace=0;

Next=real(string_copy(Dialogue[0,0],string_length(Dialogue[0,0])-1,2));
//needed!!!!!!!!!!
pos=1;
//uneeded
Side=0;

alarm[0]=5;