/// @description Insert description here
// You can write your code in this editor




stage=0;

text="fill in a ribbed solid";

meth=function()
{
with (ModelMaker)
{

//we need to find the normal of each polygon before committing


//THIS HERE IS FLAT NORMALS IN [TN]
var sq=true;
var ii=2;
var lng=array_length(node)
var tn=[[]];
var ti=0;
do
{
array_push(tn[ti],FlatNorm(node,0,ii-1,ii));
}
until(string(node[ii++])==string(node[1]))
//array_push(tn[ti],FlatNorm(node,0,1,2));
var cyc=ii-1;
ti++;

repeat(floor((lng-2)/cyc)-1)
{
tn[ti]=[];
repeat(cyc-1)
{
var tr1=FlatNorm(node,ii-cyc,ii,ii-cyc+1);
var tr2=FlatNorm(node,ii+1,ii-cyc+1,ii);
if sq {array_push(tn[ti],tr1.Add(tr2))}
else {array_push(tn[ti],tr1); array_push(tn[ti],tr2);}

ii++
}
ii++
ti++
//var tr1=FlatNorm(node,ii-(cyc*2),ii-cyc,ii-(cyc*2)+1);
//var tr2=FlatNorm(node,ii+1-cyc,ii-(cyc*2)+1,ii-cyc);

//if sq {array_push(tn,tr1.Add(tr2).Normalize())}
//else {array_push(tn,tr1); array_push(tn,tr2);}
}

ii-=cyc-1;
tn[ti]=[];
repeat(cyc-1)
{
array_push(tn[ti],FlatNorm(node,ii,ii-1,lng-1));
ii++
}
///////////////////////////////////////////////////////
//THIS HERE IS SMOOTH SHADING IN [NN]
var nn=[[]];
var nv=[[]];
var nh=[[]];
var nr=0;
var nc=0;
nn[0]=[array_first(tn[0]).Sum(tn[0]).Normalize()];
nv[0]=nn[0];

repeat(array_length(tn[0]))
{
nh[0][nc]=awrap(tn[nr],nc-1).Add(awrap(tn[nr],nc)).Normalize()
nc++
}
nc=0;

nr++
repeat(floor((lng-2)/cyc))
{
nn[nr]=[];
nv[nr]=[];
nh[nr]=[];
repeat(cyc-1)
{
var narr=[awrap(tn[nr-1],nc-1),awrap(tn[nr],nc-1),awrap(tn[nr-1],nc),awrap(tn[nr],nc)]
array_push(nn[nr],array_first(narr).Sum(narr).Normalize());
array_push(nh[nr],awrap(tn[nr],nc-1).Add(awrap(tn[nr],nc)).Normalize());
array_push(nv[nr],tn[nr-1][nc].Add(tn[nr][nc]).Normalize());

nc++
}
nc=0;
nr++
}
nn[nr]=[array_first(tn[nr-1]).Sum(tn[nr-1]).Normalize()];
nv[nr]=nn[nr];

ii=2;
//var lng=array_length(node)
show_message_async(nn)

var uvs=texture_get_uvs(sprite_get_texture(Assetmap,0));

//PUTTING DOWN THE VERTECIES HERE
var vb3=vertex_create_buffer();
array_push(vbs,vb3);
vertex_begin(vb3,view3D.vf);
nc=0;
nr=0;
var arry=[nn,nh,nv,tn]
var twx=[1, 0, 1, 0]
var twy=[1, 1, 0, 0]
var int=0;
do
{
int=s2a(awrap(arry[int][0],0));
int=node[0][5]
vertex_arr_point(vb3,node[0],s2a(awrap(arry[int][0],nc)),[0,0],node[0][3]);
int=node[ii-1][5]
vertex_arr_point(vb3,node[ii-1],s2a(awrap(arry[int][twx[int]],nc)),[0,0],node[ii-1][3]);
int=node[ii][5]
vertex_arr_point(vb3,node[ii],s2a(awrap(arry[int][twx[int]],nc+twy[int])),[0,0],node[ii][3]);
	
//vertex_arr_point(vb3,node[0],s2a(nn[0][0]),[0,0],node[0][3]);
//vertex_arr_point(vb3,node[ii-1],s2a(awrap(nn[1],nc)),[0,0],node[ii-1][3]);
//vertex_arr_point(vb3,node[ii],s2a(awrap(nn[1],nc+1)),[0,0],node[ii][3]);
nc++
}
until(string(node[ii++])==string(node[1]))
cyc=ii-1;
nc=0;
nr++
//var uvsx1=
//var uvsy1=
//var uvsx2=
//far uvsy2=
var xinc=((uvs[2]-uvs[0]))/(cyc-1);
var yinc=((uvs[3]-uvs[1]))/((lng-2)/cyc+1);
show_message_async(((lng-2)/cyc+1));

repeat(floor((lng-2)/cyc)-1)
{

repeat(cyc-1)
{
int=node[ii-cyc][5];
vertex_arr_point(vb3,node[ii-cyc],	s2a(awrap(arry[int][nr],nc)),[(nc)*xinc,(nr)*yinc],node[ii-cyc][3]);
int=node[ii][5];
vertex_arr_point(vb3,node[ii],		s2a(awrap(arry[int][nr+twx[int]],nc)),[(nc)*xinc,(nr+1)*yinc],node[ii][3]);
int=node[ii-cyc+1][5];
vertex_arr_point(vb3,node[ii-cyc+1],s2a(awrap(arry[int][nr],nc+twy[int])),[(nc+1)*xinc,(nr)*yinc],node[ii-cyc+1][3]);

int=node[ii+1][5];
vertex_arr_point(vb3,node[ii+1],	s2a(awrap(arry[int][nr+twx[int]],nc+twy[int])),[(nc+1)*xinc,(nr+1)*yinc],node[ii+1][3]);
int=node[ii-cyc+1][5];
vertex_arr_point(vb3,node[ii-cyc+1],s2a(awrap(arry[int][nr],nc+twy[int])),[(nc+1)*xinc,(nr)*yinc],node[ii-cyc+1][3]);
int=node[ii][5];
vertex_arr_point(vb3,node[ii],		s2a(awrap(arry[int][nr+twx[int]],nc)),[(nc)*xinc,(nr+1)*yinc],node[ii][3]);

	
//vertex_arr_point(vb3,node[ii-cyc],	s2a(awrap(nn[nr],nc)),[0,0],node[ii-cyc][3]);
//vertex_arr_point(vb3,node[ii],		s2a(awrap(nn[nr+1],nc)),[0,0],node[ii][3]);
//vertex_arr_point(vb3,node[ii-cyc+1],s2a(awrap(nn[nr],nc+1)),[0,0],node[ii-cyc+1][3]);

//vertex_arr_point(vb3,node[ii+1],	s2a(awrap(nn[nr+1],nc+1)),[0,0],node[ii+1][3]);
//vertex_arr_point(vb3,node[ii-cyc+1],s2a(awrap(nn[nr],nc+1)),[0,0],node[ii-cyc+1][3]);
//vertex_arr_point(vb3,node[ii],		s2a(awrap(nn[nr+1],nc)),[0,0],node[ii][3]);

ii++
nc++
}
nc=0;
nr++;
ii++
}

ii-=cyc-1;
repeat(cyc-1)
{
int=node[ii][5];
vertex_arr_point(vb3,node[ii],s2a(awrap(arry[int][nr],nc+twy[int])),[0,0],node[ii][3]);
int=node[ii-1][5];
vertex_arr_point(vb3,node[ii-1],s2a(awrap(arry[int][nr],nc)),[0,0],node[ii-1][3]);
int=node[lng-1][5];
vertex_arr_point(vb3,node[lng-1],s2a(awrap(arry[int][nr+twx[int]],0)),[0,0],node[lng-1][3]);

//vertex_arr_point(vb3,node[ii],s2a(awrap(nn[nr],nc+1)),[0,0],node[ii][3]);
//vertex_arr_point(vb3,node[ii-1],s2a(awrap(nn[nr],nc)),[0,0],node[ii-1][3]);
//vertex_arr_point(vb3,node[lng-1],s2a(awrap(nn[nr+1],0)),[0,0],node[lng-1][3]);

ii++
nc++
}



vertex_end(vb3);
}
}





