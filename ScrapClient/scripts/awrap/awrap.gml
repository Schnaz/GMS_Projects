// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function awrap(array,value){
var lng=array_length(array);
var sgn=sign(value);
while(value<0||value>(lng-1))
{
value-=sgn*lng;
}
return(array[value]);
}

function s2a(struct){
return([struct.x,struct.y,struct.z]);
}

function resolve(number,resolution){
return(round(number*resolution)/resolution);
}