extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if global.mode != global.modes.collection:
		text = ""
	elif global.collection_page == 1:
		if global.collection[4]:
			text = "Seahorse\nNo:"+str(global.collection[4])
		else:
			text = "???"
	elif global.collection_page == 2:
		if global.collection[12]:
			text = "Nautilus\nNo:"+str(global.collection[12])
		else:
			text = "???"
	elif global.collection_page == 3:
		if global.collection[20]:
			text = "Lionfish\nNo:"+str(global.collection[20])
		else:
			text = "???"
	elif global.collection_page == 4:
		if global.collection[28]:
			text = "Blobfish\nNo:"+str(global.collection[28])
		else:
			text = "???"
