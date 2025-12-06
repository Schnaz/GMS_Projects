/// @description Insert description here
// You can write your code in this editor

x=view_get_wport(0)/2;
y=view_get_hport(0)/2-100;

rt=0.25

ti=rt*60

inc=90/ti

//#of sides between 1 & 100
sides=100;
half=(sides-1)/2;

di=irandom_range(1,sides);
di1=string_char_at("0"+string(di),string_length(string(di)))
di2=string_char_at(string(di),string_length(string(di)))

dio=irandom_range(1,sides);
di1o=string_char_at("0"+string(di),string_length(string(di)))
di2o=string_char_at(string(di),string_length(string(di)))

col1=c_white
col2=c_white

ang=0

scale=2;

stopped=false;
stop=false;

lucky=-1;

di=01;