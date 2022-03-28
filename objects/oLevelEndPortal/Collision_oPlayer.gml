with(oPlayer){
	if (hascontrol){
		hascontrol = false;
		Transitioning(TRANS_MODE.GOTO,other.target);
	}
}