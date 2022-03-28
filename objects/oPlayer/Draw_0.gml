draw_self();

//Drawing player hp
draw_set_color(c_lime);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x-25,y-50,global.hp);
draw_text(x,y-50,"/");
draw_text(x+25,y-50,global.hp_max);


if (flashP > 0){
	flashP--;
	//shader_set(shFlash);
	draw_self();
	shader_reset();
}



