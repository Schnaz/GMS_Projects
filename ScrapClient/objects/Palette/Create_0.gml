/// @description Insert description here
// You can write your code in this editor

field[0]=instance_create_depth(x+2,y+20,depth-1,Cbox);
field[1]=instance_create_depth(x+68,y+20,depth-1,Cbox);

field[2]=instance_create_depth(x+5,y+45,depth-1,Numberfield,{image_xscale:30, col:c_red});
field[3]=instance_create_depth(x+5,y+70,depth-1,Numberfield,{image_xscale:30, col:c_lime});
field[4]=instance_create_depth(x+5,y+95,depth-1,Numberfield,{image_xscale:30, col:c_blue});
field[5]=instance_create_depth(x+5,y+120,depth-1,Numberfield,{image_xscale:30, col:c_gray});

field[6]=instance_create_depth(x+55,y+45,depth-1,Numberfield,{image_xscale:30, col:c_red});
field[7]=instance_create_depth(x+55,y+70,depth-1,Numberfield,{image_xscale:30, col:c_lime});
field[8]=instance_create_depth(x+55,y+95,depth-1,Numberfield,{image_xscale:30, col:c_blue});
field[9]=instance_create_depth(x+55,y+120,depth-1,Numberfield,{image_xscale:30, col:c_gray});

field[10]=instance_create_depth(x+5,y+145,depth-1,Textfield,{image_xscale:80, str:"Assetmap", col:c_gray});
field[11]=instance_create_depth(x+5,y+170,depth-1,Numberfield,{image_xscale:30, col:c_red, str:""});
field[12]=instance_create_depth(x+55,y+170,depth-1,Numberfield,{image_xscale:30, col:c_lime, str:""});
field[13]=instance_create_depth(x+5,y+195,depth-1,Numberfield,{image_xscale:30, col:c_red, str:""});
field[14]=instance_create_depth(x+55,y+195,depth-1,Numberfield,{image_xscale:30, col:c_lime, str:""});

col1=c_white;
col2=c_white;

alph1=1;
alph2=1;

arry=[[0,1],[2,3]];
edge=0;
sid=0;
xw=0;
yh=0;
x1=0;
y1=0;
x2=64;
y2=64;
