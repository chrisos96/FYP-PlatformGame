with (other){
	hp = hp - 25;
	flash = 3;
	hitfrom = other.direction
	audio_sound_pitch(SFXEnemyHurt,choose(0.75,0.6,0.9));
	audio_play_sound(SFXEnemyHurt,500,false);
}

instance_destroy();