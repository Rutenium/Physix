note
	description: "Summary description for {IMAGE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IMAGE
inherit
	SDL_WRAPPER


create
	make,make_rect
feature
	image,screen,targetarea:POINTER
	make(a_targetscreen:POINTER;a_path:STRING;a_x,a_y:INTEGER)
	local
		path_image:C_STRING
		memory_manager:POINTER
	do
		screen:=a_targetscreen
		create path_image.make (a_path)
		image:=SDL_LoadBMP (path_image.item)
		targetarea := memory_manager.memory_calloc (1, SDL_SIZEOF)
		set_x (a_x.to_integer_16)
		set_y (a_y.to_integer_16)
		set_w_rect (targetarea, get_w_image(image).to_natural_16)
		set_h_rect (targetarea, get_h_image(image).to_natural_16)
		SetColorKey
	end
	make_rect(a_targetscreen:POINTER;a_x1,a_y1,a_x2,a_y2:INTEGER)
	local
		path_image:C_STRING
		memory_manager:POINTER
	do
		screen:=a_targetscreen
		create path_image.make ("images/base.bmp")
		image:=SDL_LoadBMP(path_image.item)
		targetarea := memory_manager.memory_calloc (1, SDL_SIZEOF)
		set_x (a_x1.to_integer_16)
		set_y (a_y1.to_integer_16)
		set_w_rect (targetarea, (a_x2-a_x1).abs.to_natural_16)
		set_h_rect (targetarea, (a_y2-a_y1).abs.to_natural_16)
		SDL_FillRect(image,create{POINTER},51455)
	end
	SetColorKey
	local
		error:INTEGER
	do
		error:=SDL_SetColorKey(image,SDL_SRCCOLORKEY,SDL_MapRGB(get_format(screen),0,255,255))
	end
	BlitSurface
	local
		error:INTEGER
	do
		error := SDL_BlitSurface (image, Create {POINTER}, screen, targetarea)
		check
			BlitSurface: error=0
		end
	end
	x:INTEGER assign set_x
	do
		result:=get_x_rect(targetarea).to_integer
	end
	y:INTEGER assign set_y
	do
		result:=get_y_rect(targetarea).to_integer
	end
	set_x(a_x:INTEGER)
	do
		set_x_rect(targetarea,a_x.to_integer_16)
	end
	set_y(a_y:INTEGER)
	do
		set_y_rect(targetarea,a_y.to_integer_16)
	end
	width:INTEGER
	do
		result:=get_w_image(image)
	end

	height:INTEGER
	do
		result:=get_h_image(image)
	end
end
