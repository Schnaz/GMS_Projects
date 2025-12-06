/// @description Insert description here
// You can write your code in this editor
Dial_clear();

Dialogue[5,0]=0;
Dialogue[4,0]="01Bugs take various shapes and forms, so if something looks buggy or moves erratically, try to avoid or eliminate it.05";

Dialogue[3,0]="01Well, not all bugs look like flies.04";

Dialogue[2,0]="01Yeah, so don't touch them!04";

Dialogue[0,3]="00They kind of look like flies.03";
Dialogue[0,2]="00Got It!04";
Dialogue[0,1]="00Wait really?02";
Dialogue[0,0]="01Look out, those things are bugs! One touch and the entire game will crash!!!01";

Dial(Dialogue,Charray,Actions);
