/// @description Insert description here
// You can write your code in this editor
Pnum=gamepad_is_connected(0)+gamepad_is_connected(1)+gamepad_is_connected(2)+gamepad_is_connected(3)+1;
val=0;
window_set_fullscreen(true);

audio_play_sound(Editsng,2,1);


Allready=false;


//[0][-]name
//[1][-]desc
//[2][-]sprite
ShipBrake=[
[
"Wake Brake",
"Force Brake",
"Kill Brake",
"Glide Brake",
"Drift Brake"
],
[
"The faster you go, the faster you slow",
"Applies force until you come to a halt",
"Kills all momentum, can damage the ship",
"Kills all perpendicular momentum, can damage the ship",
"kills all parallel momentum, can damage the ship"
],
[Wbrake,Fbrake,Kbrake,Gbrake,Dbrake]];
ShipDrive=[
[
"Force Drive",
"Vector Drive",
"Impulse Drive"
],
[
"Applies constant force",
"Applies constant momentum",
"Boosts in bursts"
],
[Fdrive,Vdrive,Idrive]];
ShipTurn=[
[
"Force Turn",
"Vector Turn"
],
[
"Applies Torque",
"Applies Momentum"
],
[Fturn,Vturn]];
ShipGun=[
[
"Gatling [s]",
"Shot [s]",
"Sniper [s]",
"Gun [m]",
"Burst [m]",
"Pirate [m]",
"Aimable [m]",
"Cannon [l]",
"Drop [l]",
"Boost [l]",
"Launcher [r]",
"Aimable [r]",
"Side [r]"
],
[
"small bullets at a fast pace",
"cluster of small bullets at slightly varying speeds and angles",
"small bullet at high speed",
"bullets at a decent rate",
"three bullets in quick succession but has longer recharge",
"bullet to either side of the ship, but has slightly lower firing speed",
"bullet in direction of camera",
"bombs at a low pace and decent speed",
"bombs at a medium pace but no speed",
"bombs sent backwards",
"rockets at a decent rate",
"rockets in direction of camera",
"two rockets fired in parrellel"
]
];
Crummy=[
[
"NO!",
"yes"
],
[
"flies straight",
"fires crooked"
]
];
GunRocket=[
[
"Torpedo",
"Dumb Missile",
"Smart Missile"
],
[
"flies straight",
"flies towards opponent",
"intercepts opponent"
]
];
BulletEffect=[
[
"Impact",
"Blunt",
"Contact",
"Timed"
],
[
"deals damage",
"deals knockback",
"explodes on contact",
"explodes after time"
]
];