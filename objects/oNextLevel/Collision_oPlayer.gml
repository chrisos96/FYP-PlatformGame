with(oPlayer){
	if (hascontrol){
		hascontrol = false;
		game_save(global.gunAmmo);
		Transitioning(TRANS_MODE.GOTO,other.target);
	}
}