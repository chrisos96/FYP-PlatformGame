if (audio_is_playing(ostLVL4))
{
	//do nothing 
}
else 
{
	audio_stop_all();
	audio_play_sound(ostLVL4,500,true);
}
