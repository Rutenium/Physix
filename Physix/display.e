note
	description: "Summary description for {DISPLAY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DISPLAY

inherit

	SDL_WRAPPER

create
	make

feature

	screen: POINTER

	make
		local
			error: INTEGER
		do
			error := SDL_Init (SDL_INIT_VIDEO | SDL_INIT_AUDIO)
			screen := SDL_SetVideoMode (700, 700, 32, SDL_SWSURFACE)
		ensure
			screen_not_null: screen /= create {POINTER}
		end



	show
		local
			error:INTEGER
		do
			error := SDL_Flip (screen)
			SDL_Delay (1)
		end

end
