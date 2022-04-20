
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
	
	if((follow).object_index == oPlayerDead){
			x = xTo;
			y = yTo;
	}
}

//Update object positioning
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x,view_w_half+buff, room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff, room_height-view_h_half-buff);

//Screen Shaking
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));


//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

//Level 1-5 Parallax
if (layer_exists("Backgrounds_1")){
	layer_x("Backgrounds_1", x/4);
}
if (layer_exists("Backgrounds_2")){
	layer_x("Backgrounds_2", x/3.5);
}
if (layer_exists("Backgrounds_3")){
	layer_x("Backgrounds_3", x/3);
}
if (layer_exists("Backgrounds_4")){
	layer_x("Backgrounds_4", x/2.5);
}
if (layer_exists("Backgrounds_5")){
	layer_x("Backgrounds_5", x/2);
}

