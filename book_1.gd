extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if global.mode == global.modes.collection:
		if global.collection_page == 0:
			global.collection_page = 1
	else:
		global.collection_page = 0
	if global.collection_page == 1:
		show()
	else:
		hide()
