extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if global.mode != global.modes.collection:
		text = ""
	elif global.collection_page == 1:
		if global.collection[0]:
			text = "Minnow"
		else:
			text = "???"
	elif global.collection_page == 2:
		if global.collection[8]:
			text = "Trout"
		else:
			text = "???"
	elif global.collection_page == 3:
		if global.collection[16]:
			text = "Swordfish"
		else:
			text = "???"
	elif global.collection_page == 4:
		if global.collection[24]:
			text = "Parrotfish"
		else:
			text = "???"
