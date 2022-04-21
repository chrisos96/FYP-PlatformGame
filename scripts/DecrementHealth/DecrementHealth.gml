// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function oPlayerDecrementHealth()
{
	    if (invincible = 0){
		global.hp = global.hp -25;
		audio_sound_pitch(SFXPlayerHurt,choose(1,0.95,1.05));
		audio_play_sound(SFXPlayerHurt,400,false);
		flashP = 3;
		invincible = 60;
	}
}

function oPlayerDecrementHealthBomb()
{
	    if (invincible = 0){
		global.hp = global.hp -50;
		audio_play_sound(SFXExplode,400,false);
		flashP = 3;
		invincible = 60;
	}
}