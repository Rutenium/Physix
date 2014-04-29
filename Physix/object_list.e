note
	description: "Summary description for {OBJECT_LIST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	OBJECT_LIST
create
	make
feature
	list:LINKED_LIST[OBJECT]
	screen:POINTER
	make(a_screen:POINTER)
	do
		screen:=a_screen
		create list.make
	end
	add(a_x1,a_y1,a_x2,a_y2:INTEGER)
	do
		list.finish
		list.extend(create{OBJECT}.make_custom_rect(screen,a_x1,a_y1,a_x2,a_y2))
	end
end
