note
	description: "Summary description for {OBJECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	OBJECT
inherit
	image
		rename
			make as make_image
		end
create
	make,make_custom_rect
feature
	make(a_screen:POINTER;a_path:STRING;a_x,a_y:INTEGER)
	do
		make_image(a_screen,a_path,a_x,a_y)
	end
	make_custom_rect(a_screen:POINTER;a_x1,a_y1,a_x2,a_y2:INTEGER)
	do
		make_rect(a_screen,a_x1,a_y1,a_x2,a_y2)
	end
end
