timer++
if timer < 60*6{
	subImg += 0.5
	draw_sprite_ext(spr_rikorooBounce, subImg, gui_xpos, gui_ypos, 0.25, 0.25, 0, -1, 1)


	draw_set_font(fnt_notification)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	var Xpos = gui_xpos
	var Ypos = gui_ypos+100
	var OW = 4 //Outline Width
	draw_set_color(c_white)
	var S = username + "\nis now following"
	for (var X = Xpos - OW; X <= Xpos + OW; X++){
		for (var Y = Ypos - OW; Y <= Ypos + OW; Y++){
			draw_text(X, Y, S)
		}
	}
	draw_set_color(c_black)
	draw_text(Xpos, Ypos, S)
}else{
	obj_notifHandler.handlingNotif = false
	instance_destroy()
}	