// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function oPlayerDecrementHealth()
{
	    if (invincible = 0){
		global.hp = global.hp -25;
		flashP = 3;
		invincible = 60;
	}
}

function oPlayerDecrementHealthBomb()
{
	    if (invincible = 0){
		global.hp = global.hp -50;
		flashP = 3;
		invincible = 60;
	}
}