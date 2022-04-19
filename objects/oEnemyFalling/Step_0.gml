
//Vertical gravity
vsp = vsp + grv

//Check for enemy with ledges
if (grounded) && (stayonledge) && (!place_meeting(x+hsp,y+1,oCollision)){
	hsp = -hsp;
}

//Code for horiontal collision with object
if(place_meeting(x+hsp,y,oCollision)){
	while (!place_meeting(x+sign(hsp),y,oCollision)){
		x = x + sign(hsp)
	}
	hsp= -hsp;
}
x = x + hsp

//Code for vertical collision with object
if(place_meeting(x,y+vsp,oCollision)){
	while (!place_meeting(x,y+sign(vsp),oCollision)){
		y = y + sign(vsp)
	}
	vsp=0
}
y = y + vsp

//Animating Enemy
if (!place_meeting(x,y+1,oCollision)){
	grounded = false;
	sprite_index = sEnemy;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 2; else image_index = 0;
}
else
{	
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy
	}
	else
	{
		sprite_index = sEnemy
	}
}



//invert player movement when facing desired direction
if (hsp != 0){
	image_xscale = sign(hsp) * size;
}
image_yscale = size;
