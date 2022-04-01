if (hascontrol){
	key_left = keyboard_check(vk_left);
	key_right = keyboard_check(vk_right);
	key_jump = keyboard_check(vk_space);
	key_jump2 = keyboard_check(vk_up);

	if (key_left) || (key_right) || (key_jump){
		controller = 0;
	}

	if (abs(gamepad_axis_value(4,gp_axislh)) > 0.2){
		key_left = abs(min(gamepad_axis_value(4,gp_axislh),0));
		key_right = max(gamepad_axis_value(4,gp_axislh),0);
		controller = 1;
	}

	if (gamepad_button_check(4,gp_face2)){
		key_jump = 1;
		controller = 1;
	
	}
}
else{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	key_jump2 = 0;
}

//Calculating movement VERSION1 STATIC
var move = key_right - key_left

//Horizontal movement
hsp = (move * walksp);

//Calculating movement VERSION2 DYNAMIC
//var move = (key_right - key_left) * walksp

//Horizontal movement
//hsp = Acceleration(hsp, move, acceleration);


//Vertical gravity
vsp = (vsp + grv);


//If on floor then allow jump
allowjump -= 1;
if(allowjump > 0) && ((key_jump || key_jump2)){
	vsp = -7.2;
	allowjump = 0;
}

//Code for horiontal collision with object
if(place_meeting(x+hsp,y,oCollision)){
	while (!place_meeting(x+sign(hsp),y,oCollision)){
		x = x + sign(hsp)
	}
	hsp=0
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

//Animating Player

var aimside = sign(mouse_x - x);
if(aimside != 0){
	image_xscale = aimside;
}

if (!place_meeting(x,y+1,oCollision)){
	sprite_index = sPlayerMovement;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 2; else image_index = 0;
}
else
{	
	allowjump = 8;
	if(sprite_index == sPlayerMovement){
		
	}
	image_speed = 1;
	
	if (hsp == 0)
	{
		sprite_index = sPlayer
	}
	else
	{
		sprite_index = sPlayerMovement
		if (aimside != sign(hsp)){
			sprite_index = sPlayerMovement;
		}
	}
}

if invincible > 0 {
    invincible -= 1;
}

if(global.hp <= 0){
	//global.hp = 0;
	instance_change(oPlayerDead,true);
	room_restart();
	SetDefaultGlobalVar();
}


