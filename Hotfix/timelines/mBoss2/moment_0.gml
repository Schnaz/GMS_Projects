repeat (irandom_range(1,3)) instance_create_layer(irandom_range(32,224),irandom_range(40,69),layer,passbug);

Dial_def();
Dial_clear();
Dialogue=[["01Alright, You should be seeing some bugs try to remove them01"]];
DialS(Dialogue,Charray,Actions);