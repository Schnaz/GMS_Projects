/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_yellow);


buffer_seek(client_buffer,buffer_seek_start,0);
buffer_write(client_buffer,buffer_u8,1);
buffer_write(client_buffer,buffer_string,"yep its working");
network_send_packet(client,client_buffer,buffer_tell(client_buffer));


