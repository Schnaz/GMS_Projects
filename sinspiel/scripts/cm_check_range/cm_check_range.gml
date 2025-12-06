function cm_check_range(inx, iny, bounds){
	//bounds[[[minx,maxx][miny,maxy]],[[minx,maxx][miny,maxy]]] returns complete check of value against bounds
var b=true;
if (array_length(bounds)!=0) {
	//show_message([inx,iny,bounds]);
var i=0;
repeat(array_length(bounds)) {
b=b && ((bounds[i][0][0] > inx) || (inx >= bounds[i][0][1])) || ((bounds[i][1][0] > iny) || (iny >= bounds[i][1][1]));
i++
}
//show_message([(bounds[0][0][1] > inx) && (inx >= bounds[0][0][0]), (bounds[0][1][1] > iny) && (iny >= bounds[0][1][0])]);
}
return b;
}

//for positive cube, wrong z values were checked