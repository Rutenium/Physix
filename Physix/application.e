note
	description : "Physix application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	main

feature {NONE} -- Initialization

	main
		local
			event_handler:EVENT
			screen:DISPLAY
			list:OBJECT_LIST
			x,y:INTEGER
		do
			create event_handler.make
			create screen.make
			create list.make(screen.screen)
			from
			until
				event_handler.is_quit
			loop
				event_handler.handle
				if event_handler.mouse_pressed then
					x:= event_handler.get_x_mouse
					y:= event_handler.get_y_mouse
					event_handler.mouse_pressed:=false
				end
				if event_handler.is_mouse_button_up then
					list.add (x,y,event_handler.get_x_mouse,event_handler.get_y_mouse)
					event_handler.mouse_up:=false
				end
				from
					list.list.start
				until
					list.list.exhausted
				loop
					list.list.item.blitsurface
					list.list.forth
				end
				screen.show
			end
		end

end
