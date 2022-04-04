if(place_meeting(x,y,oPlayer)){
	if (global.hp < global.hp_max){
		instance_destroy();
	}
	with(oPlayer){
		global.hp +=50;
		if (global.hp > global.hp_max){
		global.hp = global.hp_max;
		}
	}
	
}
