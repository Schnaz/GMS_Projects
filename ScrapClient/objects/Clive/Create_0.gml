client=network_create_socket(network_socket_tcp);
port=64198;

connected=network_connect(client, "127.0.0.1", port);
show_message(string(connected));

client_buffer=buffer_create(1024,buffer_fixed,1)

t=0;
drawtext="waiting";