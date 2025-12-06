type_event=ds_map_find_value(async_load,"type");

switch (type_event)
{
case network_type_data:
	buffer=ds_map_find_value(async_load,"buffer");
	socket=ds_map_find_value(async_load,"id");
	buffer_seek(buffer,buffer_seek_start,0);
	packet_receive(buffer,socket);
break;
}




