extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if global.mode != global.modes.collection:
		text = ""
	elif global.collection_page == 1:
		if global.collection[6]:
			text = "Nemo\nNo:"+str(global.collection[6])
		else:
			text = "???"
	elif global.collection_page == 2:
		if global.collection[14]:
			text = "Tang\nNo:"+str(global.collection[14])
		else:
			text = "???"
	elif global.collection_page == 3:
		if global.collection[22]:
			text = "Turtle\nNo:"+str(global.collection[22])
		else:
			text = "???"
	elif global.collection_page == 4:
		if global.collection[30]:
			text = "Squid\nNo:"+str(global.collection[30])
		else:
			text = "???"
