draw_self();

draw_set_color(c_red);
draw_set_font(fMainFont);
draw_text(x-25,y-50,hp);
draw_text(x,y-50,"/");
draw_text(x+25,y-50,hp_max);

//Draw self allows object to appear as what was originally intended for it
draw_self();
//After flash variable reduces to 0 shader resets and reverts to Draw self
if (flash > 0){
	flash--;
	//shader_set(shFlash);
	draw_self();
	shader_reset();
}