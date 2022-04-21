x = owner.x;
y = owner.y+15;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer))
{
	if (oPlayer.x < x) image_yscale = -image_yscale;
	if (point_distance(oPlayer.x,oPlayer.y,x,y) < 500)
	{
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown--;
		if (countdown <= 0)
		{
			countdown = countdowntick;
			if(!collision_line(x,y,oPlayer.x,oPlayer.y,oCollision,false,false))
			audio_sound_pitch(SFXShot,choose(0.4,0.2,0.3));
			audio_play_sound(SFXShot,600,false);
			{
			//Bullets code Here
			with (instance_create_layer(x,y-6,"Pickups", oEnemyAmmo))
			{
				speed = 6;
				direction = other.image_angle + random_range(-6,6);
				image_angle = direction;
			}
			}
		}
	}
}