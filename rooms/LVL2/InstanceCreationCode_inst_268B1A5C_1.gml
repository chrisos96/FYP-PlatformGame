

if (audio_is_playing(ostLVL1))
{
	//do nothing 
}
else 
{
	audio_stop_all();
	audio_play_sound(ostLVL1,500,true);
}
