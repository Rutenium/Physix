note
	description: "Summary description for {SDL_WRAPPER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SDL_WRAPPER
feature {NONE}
	frozen SDL_Init (flags: NATURAL_32): INTEGER
		external
			"C (Uint32):int | <SDL.h>"
		alias
			"SDL_Init"
		end

	frozen SDL_PollEvent(event:POINTER):INTEGER
	external
		"C (SDL_Event*): int | <SDL.h>"
	alias
		"SDL_PollEvent"
	end

	frozen SDL_Quit_bye
		external
			"C | <SDL.h>"
		alias
			"SDL_Quit"
		end

	frozen SDL_GetKey (event:POINTER):POINTER
		external
			"C [struct <SDL.h>] (SDL_Event):SDL_KeyboardEvent"
		alias
			"&key"
		end
	frozen SDL_GetMotion (event:POINTER):POINTER
		external
			"C [struct <SDL.h>] (SDL_Event):SDL_MouseMotionEvent"
		alias
			"&motion"
		end
	frozen SDL_get_x_mouse (event:POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint16)"
		alias
			"x"
		end
	frozen SDL_get_y_mouse (event:POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_MouseMotionEvent):Uint16)"
		alias
			"y"
		end

	frozen SDL_GetKeySym(event:POINTER):INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"((SDL_KeyboardEvent *)$event)->keysym.sym"
		end

	frozen SDL_SRCCOLORKEY:NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SRCCOLORKEY"
		end

	frozen SDL_INIT_VIDEO: NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_VIDEO"
		end
	frozen SDL_INIT_AUDIO: NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_INIT_AUDIO"
		end
	frozen AUDIO_S16SYS: NATURAL_16
		external
			"C inline use <SDL.h>"
		alias
			"AUDIO_S16SYS"
		end

	frozen SDL_SWSURFACE: NATURAL_32
		external
			"C inline use <SDL.h>"
		alias
			"SDL_SWSURFACE"
		end

	frozen SDL_KEYDOWN:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_KEYDOWN"
		end
	frozen SDL_MOUSEBUTTONDOWN:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_MOUSEBUTTONDOWN"
		end
	frozen SDL_MOUSEBUTTONUP:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_MOUSEBUTTONUP"
		end
	frozen SDL_KEYUP:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_KEYUP"
		end

	frozen SDLK_A:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_a"
		end
	frozen SDLK_RCTRL:INTEGER
			external
				"C inline use <SDL.h>"
			alias
				"SDLK_RCTRL"
		end
	frozen SDLK_W:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_w"
		end

	frozen SDLK_S:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_s"
		end

	frozen SDLK_D:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_d"
		end
	frozen SDLK_RIGHT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_RIGHT"
		end

	frozen SDLK_LEFT:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_LEFT"
		end

	frozen SDLK_UP:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_UP"
		end

	frozen SDLK_DOWN:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_DOWN"
		end
	frozen SDLK_SPACE:INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"SDLK_SPACE"
		end
	frozen SDL_SIZEOF: INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_Rect)"
		end

	frozen SDL_SIZEOF_EVENT: INTEGER
		external
			"C inline use <SDL.h>"
		alias
			"sizeof(SDL_Event)"
		end

	frozen SDL_QUIT:NATURAL_8
		external
			"C inline use <SDL.h>"
		alias
			"SDL_QUIT"
		end

	frozen SDL_LoadBMP (file: POINTER): POINTER
		external
			"C (const char *):SDL_Surface * | <SDL.h>"
		alias
			"SDL_LoadBMP"
		end

	frozen SDL_SetVideoMode (width, height, bpp: INTEGER; flags: NATURAL_32): POINTER
		external
			"C (int, int, int, Uint32):SDL_Surface * | <SDL.h>"
		alias
			"SDL_SetVideoMode"
		end
	frozen SDL_FillRect (dst,dstrect:POINTER;color:INTEGER_32)
		external
			"C (SDL_Surface *,SDL_Rect *,Uint32) | <SDL.h>"
		alias
			"SDL_FillRect"
		end

	frozen SDL_BlitSurface (src, srcrect, dst, dstrect: POINTER): INTEGER
		external
			"C (SDL_Surface *, SDL_Rect *, SDL_Surface *, SDL_Rect *):int | <SDL.h>"
		alias
			"SDL_BlitSurface"
		end

	frozen SDL_Flip (screen: POINTER): INTEGER
		external
			"C (SDL_Surface *):int | <SDL.h>"
		alias
			"SDL_Flip"
		end

	frozen SDL_Delay (ms: NATURAL_32)
		external
			"C (Uint32)| <SDL.h>"
		alias
			"SDL_Delay"
		end


	frozen SDL_MapRGB (format:POINTER;r,g,b:NATURAL_8):NATURAL_32
		external
			"C (const SDL_PixelFormat* ,Uint8,Uint8,Uint8) : Uint32 | <SDL.h>"
		alias
			"SDL_MapRGB"
		end

	frozen SDL_SetColorKey (surface:POINTER;flags,key:NATURAL_32):INTEGER
		external
			"C ( SDL_Surface * ,Uint32,Uint32) : int | <SDL.h>"
		alias
			"SDL_SetColorKey"
		end

	frozen set_h_rect (targetarea: POINTER; value: NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_Rect, Uint16)"
		alias
			"h"
		end

	frozen set_w_rect (targetarea: POINTER; value: NATURAL_16)
		external
			"C [struct <SDL.h>] (SDL_Rect, Uint16)"
		alias
			"w"
		end

	frozen set_x_rect (targetarea: POINTER; value: INTEGER_16)
		external
			"C [struct <SDL.h>] (SDL_Rect, Sint16)"
		alias
			"x"
		end

	frozen set_y_rect (targetarea: POINTER; value: INTEGER_16)
		external
			"C [struct <SDL.h>] (SDL_Rect, Sint16)"
		alias
			"y"
		end
	frozen get_x_rect(targetarea: POINTER):INTEGER_16
		external
			"C [struct <SDL.h>] (SDL_Rect): Sint16"
		alias
			"x"
		end
	frozen get_y_rect(targetarea: POINTER):INTEGER_16
		external
				"C [struct <SDL.h>] (SDL_Rect): Sint16"
		alias
			"y"
		end
	frozen get_h_image (targetarea: POINTER): INTEGER
		external
			"C [struct <SDL.h>] (SDL_Surface):int"
		alias
			"h"
		end

	frozen get_w_image (targetarea: POINTER): INTEGER
		external
			"C [struct <SDL.h>] (SDL_Surface):int"
		alias
			"w"
		end

	frozen get_format (SDL_Surface:POINTER):POINTER
		external
			"C [struct <SDL.h>] (SDL_Surface):SDL_PixelFormat *"
		alias
			"format"
		end
	frozen get_type (event:POINTER):NATURAL_8
		external
			"C [struct <SDL.h>] (SDL_Event): Uint8"
		alias
			"type"
		end
end
