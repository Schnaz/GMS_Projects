instance_create_layer(irandom_range(32,224),irandom_range(40,96),layer,Glit_ch);
audio_play_sound(bump4,2,0);
TboxS.Text="OH, CRAP I JUST REMOVED THE WALLS";
TboxS.pos=1;

Cubrix.visible=false;
instance_deactivate_object(Cubrix);