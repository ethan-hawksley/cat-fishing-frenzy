extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if global.mode != global.modes.collection:
		text = ""
	elif global.collection_page == 1:
		if global.collection[1]:
			text = "Shrimp\nNo:"+str(global.collection[1])
		else:
			text = "???"
	elif global.collection_page == 2:
		if global.collection[9]:
			text = "Eel\nNo:"+str(global.collection[9])
		else:
			text = "???"
	elif global.collection_page == 3:
		if global.collection[17]:
			text = "Slurpfish\nNo:"+str(global.collection[17])
		else:
			text = "???"
	elif global.collection_page == 4:
		if global.collection[25]:
			text = "Octopus\nNo:"+str(global.collection[25])
		else:
			text = "???"
