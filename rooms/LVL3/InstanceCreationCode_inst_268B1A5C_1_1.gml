if (audio_is_playing(ostLVL2))
{
	//do nothing 
}
else 
{
	audio_stop_all();
	audio_play_sound(ostLVL2,500,true);
}
