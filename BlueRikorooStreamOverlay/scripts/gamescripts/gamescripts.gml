enum Game{
	Korioro = 0,
}

function ActivateGame(game){
	if allowGame{
		if activeGame == noone{
			switch(game){
			case Game.Korioro:
				activeGame = instance_create_layer(0, 0, getLayer(-100), obj_korioro)
				break
			}
			if activeGame != noone{
				activeGame.gameID = game
			}
		}else if activeGame.gameID != game{
			activeGameSwap = game
		}
	}
}

function drawGameSurface(){
	if !surface_exists(surface){
		surface = surface_create(surfaceWidth, surfaceHeight)
	}
	surface_set_target(obj_main.activeGameSurface)
	draw_surface(surface, (1-sin(pi/2*obj_main.activeGameTransition))*obj_main.activeGameSurfaceWidth*1.05, 0)
	surface_reset_target()
}

function createGamePopup(text, Time=60*3, offsetPosScale=[1, 1]){
	var obj = instance_create_layer(surfaceWidth*0.5*offsetPosScale[0], surfaceHeight*0.5*offsetPosScale[1], getLayer(-500), obj_gamePopup)
	obj.text = text
	obj.timer = Time
	draw_set_font(fnt_subStatueUsername_tier3)
	obj.surfaceWidth = string_width(obj.text) + 8
	obj.surfaceHeight = string_height(obj.text) + 8
	instance_deactivate_object(obj)
	ds_list_add(popups, obj)
}