note
	description: "Summary description for {EVENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	EVENT

inherit

	SDL_WRAPPER

create
	make

feature

	SDL_Event: POINTER

	quit_happens, right_pressed, up_pressed, down_pressed, left_pressed, space_pressed, w_pressed, a_pressed, s_pressed, d_pressed, rctrl_pressed: BOOLEAN

	mouse_pressed : BOOLEAN assign set_mouse_pressed

	mouse_up:BOOLEAN assign set_mouse_up

	set_mouse_up(pressed:BOOLEAN)
	do
		mouse_up:=pressed
	end

	set_mouse_pressed(pressed:BOOLEAN)
	do
		mouse_pressed:=pressed
	end

	return_value: INTEGER

	make
		local
			memory_manager: POINTER
		do
			SDL_Event := memory_manager.memory_calloc (1, SDL_SIZEOF_EVENT)
		end

	handle
		do
			from
				fetch_next
			until
				exhausted
			loop
				if is_quit then
					quit_happens := true
				end
				if is_keydown then
					key_down
				end
				if is_keyup then
					key_up
				end
				if is_mouse_button_down then
					mouse_pressed:=true
				if is_mouse_button_up then

				end
				end
				fetch_next
			end
		end
	get_x_mouse:INTEGER
		do
			Result := SDL_get_x_mouse(SDL_GetMotion(SDL_Event))
		end
	get_y_mouse:INTEGER
		do
			Result := SDL_get_y_mouse(SDL_GetMotion(SDL_Event))
		end
	key_down
		local
			keysym: INTEGER
		do
			keysym := SDL_GetKeySym (SDL_GetKey (SDL_Event))
			if keysym = SDLK_RIGHT then
				right_pressed := true
			end
			if keysym = SDLK_LEFT then
				LEFT_pressed := true
			end
			if keysym = SDLK_UP then
				up_pressed := true
			end
			if keysym = SDLK_DOWN then
				down_pressed := true
			end
			if keysym = SDLK_SPACE then
				space_pressed := true
			end
			if keysym = SDLK_w then
				w_pressed := true
			end
			if keysym = SDLK_a then
				a_pressed := true
			end
			if keysym = SDLK_s then
				s_pressed := true
			end
			if keysym = SDLK_d then
				d_pressed := true
			end
			if keysym = SDLK_RCTRL then
				rctrl_pressed := true
			end
		end

	key_up
		local
			keysym: INTEGER
		do
			keysym := SDL_GetKeySym (SDL_GetKey (SDL_Event))
			if keysym = SDLK_RIGHT then
				right_pressed := false
			end
			if keysym = SDLK_LEFT then
				left_pressed := false
			end
			if keysym = SDLK_UP then
				up_pressed := false
			end
			if keysym = SDLK_DOWN then
				down_pressed := false
			end
			if keysym = SDLK_SPACE then
				space_pressed := false
			end
			if keysym = SDLK_w then
				w_pressed :=false
			end
			if keysym = SDLK_a then
				a_pressed :=false
			end
			if keysym = SDLK_s then
				s_pressed :=false
			end
			if keysym = SDLK_d then
				d_pressed :=false
			end
			if keysym = SDLK_RCTRL then
				rctrl_pressed := false
			end
		end

	fetch_next
		do
			return_value := SDL_PollEvent (SDL_Event)
		end

	exhausted: BOOLEAN
		do
			result := return_value = 0
		end

	type: NATURAL_8
		do
			result := get_type (SDL_Event)
		end

	is_quit: BOOLEAN
		do
			Result := type = SDL_QUIT
		end

	is_keydown: BOOLEAN
		do
			Result := type = SDL_KEYDOWN
		end

	is_keyup: BOOLEAN
		do
			Result := type = SDL_KEYUP
		end
	is_mouse_button_down : BOOLEAN
		do
			Result := type = SDL_MOUSEBUTTONDOWN
		end
	is_mouse_button_up : BOOLEAN
		do
			Result := type = SDL_MOUSEBUTTONUP
		end
end
