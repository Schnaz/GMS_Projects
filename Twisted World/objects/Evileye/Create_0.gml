/// @description Insert description here
// You can write your code in this editor
dial_clear();

t=0;
ymin=32;

t+=1;
x=Char.x-16*dsin(t);
y=Char.y-ymin+8*dsin(2*t);
image_angle=15*dcos(t);

act=false;


flip=false;

Charray=[[mface,1,ha],[mfacescare,1,ha],[meye,-1,jarble],[meyesad,-1,jarble],[meyebad,-1,jarble],[meyesmile,-1,jarble]]
Dialogue=[
["04WHO DARES ENTER MY DOMAIN01"],
["01Uaah! I'm sorry somebody pushed me and...02"],
["03OH SORRY FOR SCARING YOU...\nI JUST WANTED TO KNOW YOUR NAME03"],
["01Eh? My name? Its Char?04"],
["02MY NAME IS EVIL \nIT IS SO VERY LONELY HERE05"],
["05AS THANKS FOR THIS DISCOURSE\nI WILL ANSWER ANY ONE QUESTION06"],
["01Any question?07"],
["02AS LONG AS I CAN ANSWER IT07","00How so I return home?08"],//"00Am I human?12","00What happened to Donor?17"],
["02YOU MUST DEFEAT THE ONE\nWHO HOLDS POWER OVER ROTATION\nWITH THEIR POWER RETURNING IS BUT\nA SIMPLE FEAT09"],
["00Where are they?10"],
["02UP AND TO THE LEFT\nFROM YOUR CURRENT PERSPECTIVE20"],
[0],
["02I CANNOT PROVIDE AN ANSWER TO\nTHAT QUESTION THAT WILL SATISFY YOU13"],
["02BUT I CAN TELL YOU HOW YOU CAN\nOBTAIN THE ANSWER YOU SEEK14"],
["02DEFEAT THE FOUR WALLS AND THEN\nTHE ANSWER WILL BECOME CLEAR15"],
["02THEY CAN BE FOUND IN THE CORNERS OF\nTHIS WORLD20"],
[0],
["05LIKE DONOR LIKE DAUGHTER\nHE TOO MADE HIS WAY HERE18"],
["02HE ALSO ASKED ME TO WITHOLD ALL\nINFORMATION ABOUT HIM19"],
["03OOPS\nWELL I SHOULD NOT SAY\nANYMORE THAN THAT20"],

["00Well... Thanks for the information?21"],
["02I AM GOING BACK TO SLEEP\nGOODBYE22"],
[0]]

dial(Dialogue,Charray,Actions)

