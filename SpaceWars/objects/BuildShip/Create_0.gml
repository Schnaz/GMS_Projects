/// @description Insert description here
// You can write your code in this editor
dcol=$ffff00;

Tcam=false;
ANG=0;

Hdrive=false;
Hturn=true;
Hbrake=false;
Hval=[Hturn,Hdrive,Hbrake];

Alim=1000;

Ebrake=0;
Edrive=0;
Eturn=0;
Egun1=0;
Erocket1=0;
Ecrum1=0;
Eload1=0;
Egun2=0;
Erocket2=0;
Ecrum2=0;
Eload2=0;
Eval=[Eturn,Edrive,Ebrake,Egun1,Erocket1,Ecrum1,Eload1,Egun2,Erocket2,Ecrum2,Eload2];

Buildtext=["Turning system","Propulsion System","Braking System","Primary Weapon","Rocket Type","Use Crummy Variant","Payload","Secondary Weapon","Rocket Type","Use Crummy Variant","Payload"]
Builddesc=["Use left joystick to turn","Use left trigger to run engine","Use left bumper to brake","Use right trigger to fire","The type of rocket to be fired","Do you want the less reliable variant?","Changes how bullets act","Use right bumper to fire","The type of rocket to be fired","Do you want the less reliable variant?","Changes how bullets act"]

Cvalue=Edrive;
Bstep=0;
Arrayvar=[Shipbuild.ShipTurn,Shipbuild.ShipDrive,Shipbuild.ShipBrake,Shipbuild.ShipGun,Shipbuild.GunRocket,Shipbuild.Crummy,Shipbuild.BulletEffect,Shipbuild.ShipGun,Shipbuild.GunRocket,Shipbuild.Crummy,Shipbuild.BulletEffect];

Ecool=0;
cool=[0,0];
cooln=[0,0];
Angdiff=0;

HP=0;
Limit=10;
ready=false;
