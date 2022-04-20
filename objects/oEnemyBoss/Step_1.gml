if (hp <= 0){
	
	with(instance_create_layer(x,y,layer,oEnemyBossDead)){
		direction = other.hitfrom;
		hsp = lengthdir_x(0,direction);
		vsp = lengthdir_y(0,direction)-0;

		if (sign(hsp) !=0){
			image_xscale = sign(hsp) * other.size;
			image_yscale = other.size;
		}
	}
	if (hasgun == false)
	{
		instance_destroy()
	}
	else
	{
		with (mygun) instance_destroy();
		instance_destroy();
	}
}
