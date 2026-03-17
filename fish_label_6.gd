extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if global.mode != global.modes.collection:
		text = ""
	elif global.collection_page == 1:
		if global.collection[5]:
			text = "Koi\nNo:"+str(global.collection[5])
		else:
			text = "???"
	elif global.collection_page == 2:
		if global.collection[13]:
			text = "Barracuda\nNo:"+str(global.collection[13])
		else:
			text = "???"
	elif global.collection_page == 3:
		if global.collection[21]:
			text = "Pufferfish\nNo:"+str(global.collection[21])
		else:
			text = "???"
	elif global.collection_page == 4:
		if global.collection[29]:
			text = "Barreleye\nNo:"+str(global.collection[29])
		else:
			text = "???"
