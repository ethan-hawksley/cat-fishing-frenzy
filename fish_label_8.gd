extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if global.mode != global.modes.collection:
		text = ""
	elif global.collection_page == 1:
		if global.collection[7]:
			text = "Dory\nNo:"+str(global.collection[7])
		else:
			text = "???"
	elif global.collection_page == 2:
		if global.collection[15]:
			text = "Angelfish\nNo:"+str(global.collection[15])
		else:
			text = "???"
	elif global.collection_page == 3:
		if global.collection[23]:
			text = "Piranha\nNo:"+str(global.collection[23])
		else:
			text = "???"
	elif global.collection_page == 4:
		if global.collection[31]:
			text = "Catfish\nNo:"+str(global.collection[31])
		else:
			text = "???"
